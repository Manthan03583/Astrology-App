import 'dart:async';
import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatSupport extends StatefulWidget {
  const ChatSupport({Key? key}) : super(key: key);

  @override
  State<ChatSupport> createState() => _ChatSupportState();
}

class _ChatSupportState extends State<ChatSupport> {
  List<MessageModel> messages = []; // store chat messages
  final TextEditingController _textEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  String _currentTime = DateFormat('h:mm a').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    //start the timer to update the time every second
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateFormat('h:mm a').format(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                HeadLine(text: 'Chat Support'),
                SizedBox(height: 40),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${formatChatDate(DateTime.now())}', //format the date display
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isSentByUser = message.isSentByUser;
                  return Padding(
                    padding: EdgeInsets.only(
                      left: isSentByUser ? 100.0 : 16.0,
                      right: isSentByUser ? 16.0 : 100.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isSentByUser &&
                            message.text.isNotEmpty) //letter icon for replies
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20.0,
                            child: Text(
                              "JB", //replace with any text or icon you
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Align(
                            alignment: isSentByUser
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: isSentByUser
                                    ? Colors.grey[900]
                                    : Colors.grey[900],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .end, // align content to the right
                                children: [
                                  Text(
                                    message.text,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (isSentByUser &&
                                          message.text.isNotEmpty)
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              message.time,
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            SizedBox(width: 4.0),
                                            Icon(
                                              Icons.done_all,
                                              size: 16.0,
                                              color:
                                                  Colors.blue.withOpacity(0.8),
                                            ),
                                          ],
                                        ),
                                      if (!isSentByUser &&
                                          message.text.isNotEmpty)
                                        Text(
                                          message.time,
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 12.0,
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _textEditingController,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Type a message',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.8)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.send,
                                color: Colors.white.withOpacity(0.8)),
                            onPressed: () {
                              final message =
                                  _textEditingController.text.trim();
                              if (message.isNotEmpty) {
                                setState(() {
                                  messages.add(
                                    MessageModel(
                                        text: message,
                                        isSentByUser: true,
                                        time: _currentTime),
                                  );
                                  _textEditingController.clear();
                                });

                                //for automated reply
                                _generateReply(message);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //to format the chat date display
  String formatChatDate(DateTime dateTime) {
    final now = DateTime.now();
    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day) {
      return 'Today';
    } else if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day - 1) {
      return 'Yesterday';
    } else {
      return DateFormat('dd - MMMM - yyyy').format(dateTime);
    }
  }

  //to reply with an automated message
  void _generateReply(String message) {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        messages.add(
          MessageModel(
            text: "Thank you for your message. Your issue will be solved soon!",
            isSentByUser: false,
            time: _currentTime,
          ),
        );
        _scrollToBottom();
      });
    });
  }

  //to scroll bottom of the chat
  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

class MessageModel {
  final String text;
  final bool isSentByUser;
  final String time;

  MessageModel(
      {required this.text, required this.isSentByUser, this.time = ""});
}

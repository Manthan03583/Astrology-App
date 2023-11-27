import 'dart:convert';
import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RaiseTicket extends StatefulWidget {
  const RaiseTicket({Key? key});

  @override
  State<RaiseTicket> createState() => _RaiseTicketState();
}

class _RaiseTicketState extends State<RaiseTicket> {
  var _indexVertical = 0;
  final _listVertical = ["Technical Issue", "General Issue", "Billing issue", "Others"];

  final TextEditingController _issueController = TextEditingController();

  Future<void> _raiseTicket() async {
    const String apiUrl = 'https://astro.corponizers.com/tickets';

    final Map<String, dynamic> requestData = {
      'subject': 'Astrology App Support',
      'description': _issueController.text,
      'issue': _listVertical[_indexVertical],
      'attachment': '', // Add attachment if required
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestData),
    );

    if (response.statusCode == 201) {
      print('Successfully Saved');
      _viewTicket();
    } else {
      print('Request Failed');
    }
  }

  Future<void> _viewTicket() async {
    final String apiUrl = 'https://astro.corponizers.com/tickets/1';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final int id = responseData['id'];
      final String subject = responseData['subject'];
      final String description = responseData['description'];

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Ticket Details', style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.black,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('ID: $id', style: TextStyle(color: Colors.white)),
                  Text('Subject: $subject', style: TextStyle(color: Colors.white)),
                  Text('Description: $description', style: TextStyle(color: Colors.white)),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                ),
              ],
            );
          },
        );
    } else {
      print('Failed to fetch ticket details');
    }
  }

  @override
  void dispose() {
    _issueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeadLine(text: "Raise Ticket"),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Describe your issue',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,),
                    child: TextField(
                      controller: _issueController,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                        fontSize: 15,
                      ),
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Please enter your issue',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: _listVertical.map((title) {
                  final index = _listVertical.indexOf(title);
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _indexVertical = index;
                        });
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              if (_indexVertical == index)
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Text(
                            title,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 102, 99, 99),
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  'Please upload a clear image or screenshot of your issue.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 90, 90),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.attach_file_rounded, color: Colors.white),
                        ),
                        const Text(
                          'Attach photo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _raiseTicket,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Raise Ticket',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:astrology_app/astropage/bottom_nav_bar/bottom.dart';
import 'package:flutter/material.dart';

class GoLP extends StatefulWidget {
  const GoLP({super.key, required this.text});
  final String text;

  @override
  State<GoLP> createState() => _GoLPState();
}

class _GoLPState extends State<GoLP> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
          size: 23,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class HeadLine extends StatefulWidget {
  const HeadLine({super.key, required this.text});

  final String text;

  @override
  State<HeadLine> createState() => _HeadLineState();
}

class _HeadLineState extends State<HeadLine> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomBottomNavigationBar()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class AllButtonPage extends StatelessWidget {
  const AllButtonPage({Key? key, required this.btnText, required this.pressed})
      : super(key: key);

  final String btnText;
  final void Function() pressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: ElevatedButton(
        onPressed: pressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ChatDurationPagState extends StatefulWidget {
  const ChatDurationPagState({
    super.key,
  });

  @override
  State<ChatDurationPagState> createState() => _ChatDurationPagStateState();
}

class _ChatDurationPagStateState extends State<ChatDurationPagState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Chat Duration: 04:00 Min',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Earning:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.currency_rupee_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Free  Seconds',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'Billable Seconds: 0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Cousnltation Date & Time: 28-03-2023,0:48',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Free Session',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Transaction ID: 8857253',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 27,
                    ),
                    SizedBox(
                      height: 40,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 82, 95, 165),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        child: const Text(
                          'Recommend',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoteP extends StatefulWidget {
  const NoteP({super.key, required this.text});

  final String text;

  @override
  State<NoteP> createState() => _NotePState();
}

class _NotePState extends State<NoteP> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsFiled extends StatefulWidget {
  const DetailsFiled({super.key, required this.text});
  final String text;

  @override
  State<DetailsFiled> createState() => _DetailsFiledState();
}

class _DetailsFiledState extends State<DetailsFiled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.2),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DurationP extends StatefulWidget {
  const DurationP({super.key});

  @override
  State<DurationP> createState() => _DurationPState();
}

class _DurationPState extends State<DurationP> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
        children: [
          Text(
            'Chat Duration: 04:00 Min',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            'Earning:',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.currency_rupee_sharp,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '4',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Row(
        children: [
          Text(
            'Free  Seconds',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
          SizedBox(
            width: 120,
          ),
          Text(
            'Billable Seconds: 0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Row(
        children: [
          Text(
            'Cousnltation Date & Time: 28-03-2023,0:48',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Session',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Transaction ID: 8857253',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 27,
          ),
          AllButtonPage(btnText: 'Recommend', pressed: () {}),
        ],
      ),
    ]);
  }
}

class LogP extends StatefulWidget {
  const LogP({
    super.key,
    required this.text,
    required this.controller,
  });
  final String text;
  final TextEditingController controller;

  @override
  State<LogP> createState() => _LogPState();
}

class _LogPState extends State<LogP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: widget.controller,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.2),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

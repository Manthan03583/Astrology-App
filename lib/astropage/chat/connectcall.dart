import 'package:flutter/material.dart';

class CallConnect extends StatefulWidget {
  const CallConnect({super.key});

  @override
  State<CallConnect> createState() => _CallConnectState();
}

class _CallConnectState extends State<CallConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                autofocus: false,
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  suffixIcon: const Icon(
                    Icons.mic_none,
                    color: Colors.white,
                    size: 30,
                  ),
                  border: InputBorder.none,
                  hintText: "Search chats or Users",
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 17),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
            ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: screen.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => CallList(
                      name: screen[index].name,
                      date: screen[index].date,
                      duration: screen[index].duration,
                      time: screen[index].time,
                      subscription: screen[index].subscription,
                    )),
          ],
        ),
      ),
    );
  }
}

class Callconnect {
  late String name;
  late String date;
  late String time;
  late String duration;
  late String subscription;
  late String Imageicon;

  Callconnect({
    required this.name,
    required this.date,
    required this.time,
    required this.duration,
    required this.subscription,
    required this.Imageicon,
  });
}

List<Callconnect> screen = [
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Free',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
  Callconnect(
      name: 'Ankita Shalini',
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subscription: 'Paid',
      Imageicon: ''),
];

class CallList extends StatelessWidget {
  const CallList({
    super.key,
    required this.name,
    required this.date,
    required this.time,
    required this.duration,
    required this.subscription,
  });
  final String name;
  final String date;
  final String time;
  final String duration;
  final String subscription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.1)),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/ppl2.jpeg",
                    height: 45,
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            date,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            time,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Duration: ',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            duration,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      IntrinsicHeight(
                        child: SizedBox(
                          height: 20,
                          child: Row(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  )),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(Icons.star,
                                      color: Colors.white, size: 15)),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(Icons.star,
                                      color: Colors.white, size: 15)),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(Icons.star_border,
                                      color: Colors.white, size: 15)),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(Icons.star_border,
                                      color: Colors.white, size: 15)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Text(
                subscription,
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

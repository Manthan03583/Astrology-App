import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_sharp),
                  color: Colors.white,
                  iconSize: 20,
                ),
                const Text(
                  "Chat",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const Text(
                    'Search chats or users',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic_none,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              //flex: 1,
              child: ListView.builder(
                  itemCount: page.length,
                  itemBuilder: (context, index) => ListChat(
                        name: page[index].name,
                        date: page[index].date,
                        time: page[index].time,
                        duration: page[index].duration,
                        subscription: page[index].subcription,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

class UserChat {
  //late String uimage;
  late String name;
  late String date;
  late String time;
  late String duration;
  late String subcription;

  UserChat({
    required this.date,
    required this.name,
    required this.time,
    required this.duration,
    required this.subcription,
  });
}

List<UserChat> page = [
  UserChat(
      name: "Ankita Shalini",
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '30 mins',
      subcription: 'Paid'),
  UserChat(
      name: "Ayushee Simran",
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '1 hour 30 mins',
      subcription: 'Free'),
  UserChat(
      name: "Shanaya Kaur",
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '2 hour 30 mins',
      subcription: 'Paid'),
  UserChat(
      name: "Shreeja Mishra",
      date: "21 May 23,",
      time: "02:45 PM",
      duration: '50 mins',
      subcription: 'Paid'),
];

class ListChat extends StatelessWidget {
  const ListChat({
    super.key,
    required this.name,
    required this.date,
    required this.time,
    required this.duration,
    required this.subscription,
  });
  final String name, date, time, duration, subscription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.1)),
        width: MediaQuery.of(context).size.width * 0.5,
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
              width: 10,
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
                        )
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
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              subscription,
              style: const TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10), color: Colors.amberAccent),
//       child: ListTile(
//           leading: Container(
//         decoration: BoxDecoration(
//             border: Border.all(color: Colors.white), shape: BoxShape.circle),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.asset(
//                 "assets/images/ppl2.jpeg",
//                 height: 45,
//                 width: 45,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(
//                       color: Colors.blue, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       date,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       time,
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Duration: ',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     Text(
//                       duration,
//                       style: TextStyle(color: Colors.blue),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//             Text(
//               subscription,
//               style: TextStyle(color: Colors.green),
//             ),
//           ],
//         ),
//       )),
//     );
//     ;
//   }
// }

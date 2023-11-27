import 'package:flutter/material.dart';

class ChatConnect extends StatefulWidget {
  const ChatConnect({super.key});

  @override
  State<ChatConnect> createState() => _ChatConnectState();
}

class _ChatConnectState extends State<ChatConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.95,
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
            SizedBox(height: 10,),
            // ),
            // Container(
            //   height: 40,
            //   width: MediaQuery.of(context).size.width * 0.90,
            //
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
      
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(
            //           Icons.search,
            //           color: Colors.white,
            //           size: 30,
            //         ),
            //       ),
            //       const Text(
            //         'Search chats or users',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 17,
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(
            //           Icons.mic_none,
            //           color: Colors.white,
            //           size: 30,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            //  SizedBox(
            //   height: 20,
            // ),
            ListView.builder(
              itemCount: page.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => ListChat(
                name: page[index].name,
                date: page[index].date,
                time: page[index].time,
                message: page[index].message,
                    //duration: page[index].duration,
              ),
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
  late String message;
  late String date;
  late String time;

  UserChat({
    required this.date,
    required this.message,
    required this.name,
    required this.time,
    // required this.duration,
  });
}

List<UserChat> page = [
  UserChat(
    name: "Ankita Shalini",
    date: "21 May 23,",
    time: "02:45 PM",
    message: 'Hello Ankita, May I know when can...',
  ),
  UserChat(
    name: "Ayushee Simran",
    date: "21 May 23,",
    time: "02:45 PM",
    message: 'Hello Ayushee, May I know when can...',
  ),
  UserChat(
    name: "Shanaya Kaur",
    date: "21 May 23,",
    time: "02:45 PM", message: 'Hello Shanaya, May I know when can...',
    // duration: '2 hour 30 mins',
  ),
  UserChat(
    name: "Shreeja Mishra",
    date: "21 May 23,",
    time: "02:45 PM",
    message: 'Hello Shreeja, May I know when can...',
  ),
];

class ListChat extends StatelessWidget {
  const ListChat({
    super.key,
    required this.name,
    required this.date,
    required this.time,
    required this.message,
  });
  final String name, date, time, message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.1)),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Padding(
          padding: const EdgeInsets.only(left: 7),
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
                      Text(
                        message,
                        style: TextStyle(color: Colors.white),
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
                      // Row(
                      //   children: [
                      //     const Text(
                      //       'Duration: ',
                      //       style: TextStyle(color: Colors.white),
                      //     ),
                      // Text(
                      //   duration,
                      //   style: const TextStyle(color: Colors.blue),
                      // )
                    ],
                  ),
                  // IntrinsicHeight(
                  //   child: SizedBox(
                  //     height: 20,
                  //     child: Row(
                  //       children: [
                  //         IconButton(
                  //             padding: EdgeInsets.zero,
                  //             constraints: const BoxConstraints(),
                  //             onPressed: () {},
                  //             icon: const Icon(
                  //               Icons.star,
                  //               color: Colors.white,
                  //               size: 15,
                  //             )),
                  //         IconButton(
                  //             padding: EdgeInsets.zero,
                  //             constraints: const BoxConstraints(),
                  //             onPressed: () {},
                  //             icon: const Icon(Icons.star,
                  //                 color: Colors.white, size: 15)),
                  //         IconButton(
                  //             padding: EdgeInsets.zero,
                  //             constraints: const BoxConstraints(),
                  //             onPressed: () {},
                  //             icon: const Icon(Icons.star,
                  //                 color: Colors.white, size: 15)),
                  //         IconButton(
                  //             padding: EdgeInsets.zero,
                  //             constraints: const BoxConstraints(),
                  //             onPressed: () {},
                  //             icon: const Icon(Icons.star_border,
                  //                 color: Colors.white, size: 15)),
                  //         IconButton(
                  //             padding: EdgeInsets.zero,
                  //             constraints: const BoxConstraints(),
                  //             onPressed: () {},
                  //             icon: const Icon(Icons.star_border,
                  //                 color: Colors.white, size: 15)),
                  // ],
                ),
              ),
              //  )
            ],
          ),
        ),
      ),
    );
    // const SizedBox(
    //   width: 10,
    // ),
    // Text(
    //   subscription,
    //   style: const TextStyle(color: Colors.green),
    // ),
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

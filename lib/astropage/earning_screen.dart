import 'package:flutter/material.dart';

class EarningPage extends StatefulWidget {
  const EarningPage({super.key});

  @override
  State<EarningPage> createState() => _EarningPageState();
}

class _EarningPageState extends State<EarningPage> {
  // void earning() async {
  //   final data = await Controller.getEarning();
  //   print(data["totalEarnings"]);
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(
  //     data['totalEarnings'].toString(),
  //     style: TextStyle(fontSize: 20),
  //   )));
  // }

  // @override
  // void initState() {
  //   earning();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Earning',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.99,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 247, 162),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'My Total Earning',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 25,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'This Month',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.currency_rupee,
                              size: 25,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '82.6',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.99,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'My JB Earning',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  //
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'This Month',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.currency_rupee,
                              size: 25,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '82.6',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 5),
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 10,
                      ),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 139, 176, 239),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Total\nAffiliate\nEarning',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'This Month',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5, right: 10),
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 10,
                        ),
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.42,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Report\nAffiliate\nEarning',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'This Month',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.99,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 127, 133, 234),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'My Service Earning',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 25,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'This Month',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

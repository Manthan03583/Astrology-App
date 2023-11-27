import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:astrology_app/astropage/support/support_screen.dart';
import 'package:astrology_app/controller/controller.dart';
import 'package:astrology_app/model/shortcut_model.dart';
import 'package:flutter/material.dart';

class ShortcutsPage extends StatefulWidget {
  const ShortcutsPage({super.key});

  @override
  State<ShortcutsPage> createState() => _ShortcutsPageState();
}

class _ShortcutsPageState extends State<ShortcutsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Shortcuts',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SupportPage()));
                      },
                      child: Container(
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '/shortcuts',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  NoteP(
                                      text:
                                          'Shortcuts feature helps you in quickly \nreplying chat messeges by creating \npredefined messege templates also called \nCanned Responses. Just type Slash ”/” in \nthe chat window and you will be able to \nsee available shortcuts. you can create \nown shortcuts by pressing the plus “+” \nbutton.')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // FutureBuilder<List<Shortcut>>(
                    //   future: Controller().getShortcutData(),
                    //   builder: (BuildContext context,
                    //       AsyncSnapshot<List<Shortcut>> snapshot) {
                    //     if (snapshot.connectionState ==
                    //         ConnectionState.waiting) {
                    //       return const Center(
                    //         child: CircularProgressIndicator(),
                    //       );
                    //     } else if (snapshot.hasError) {
                    //       return Center(
                    //         child: Text(
                    //           'Error: ${snapshot.error}',
                    //           style: const TextStyle(
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       );
                    //     } else {
                    //       final List<Shortcut> shortcutList = snapshot.data!;
                    //       return ListView.builder(
                    //         physics: const PageScrollPhysics(),
                    //         shrinkWrap: true,
                    //         itemCount: shortcutList.length,
                    //         itemBuilder: (context, index) {
                    //           final shortcut = shortcutList[index];
                    //           return Container(
                    //             height: 100,
                    //             width: MediaQuery.of(context).size.width,
                    //             margin: const EdgeInsets.all(10),
                    //             decoration: BoxDecoration(
                    //                 color: Colors.white.withOpacity(0.2),
                    //                 borderRadius: BorderRadius.circular(15)),
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: Column(
                    //                 children: [
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: [
                    //                       Text(
                    //                         shortcut.shortcut.toString(),
                    //                         style: const TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 18,
                    //                           fontWeight: FontWeight.bold,
                    //                         ),
                    //                       ),
                    //                       IconButton(
                    //                         onPressed: () {},
                    //                         icon: const Icon(
                    //                           Icons.more_vert_rounded,
                    //                           color: Colors.white,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   Row(
                    //                     children: [
                    //                       NoteP(
                    //                           text: shortcut.message.toString())
                    //                     ],
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       );
                    //     }
                    //   },
                    // )
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

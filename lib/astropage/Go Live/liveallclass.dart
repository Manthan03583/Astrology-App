//----------------------------------------------login hours-------------------------------------------------------------------------

import 'dart:ui';
import 'package:astrology_app/astropage/HomePage_astrologer/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ContainerField extends StatelessWidget {
  const ContainerField({super.key, required this.passController, this.press});
  final TextEditingController passController;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        controller: passController,
        style: const TextStyle(color: Colors.white, fontSize: 17),
        keyboardType: TextInputType.none,
        decoration: InputDecoration(
            focusColor: Colors.white,
            enabled: true,
            filled: true,
            fillColor: Colors.black.withOpacity(0.2),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
        onTap: press,
      ),
    );
  }
}

//---------------------------------------------Article Class Image Container ---------------------------------------------------------------------------------------------------

Widget buildBlur({
  required Widget child,
  double sigmaX = 10,
  double sigmaY = 10,
  required BorderRadius borderRadius,
}) =>
    ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: child,
        ));

// ---------------------------------------------Live Screen Image Section---------------------------------------------------------------
class ImageLive extends StatelessWidget {
  const ImageLive({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/pic3.jpg'))),
        child: child);
  }
}

//------------------------------------------------  shadowed box container of live page  ----------------------------------------------------------------------------------------

class ContainerLive extends StatefulWidget {
  const ContainerLive({super.key});

  @override
  State<ContainerLive> createState() => _ContainerLiveState();
}

class _ContainerLiveState extends State<ContainerLive> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            //color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.all(4),
                    //height: 35,
                    // width: MediaQuery.of(context).size.width * 0.55,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(40)),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.09,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Stack(
                              //fit: StackFit.loose,
                              children: [
//------------------------------------------------------------ People Picture ------------------------------------------------------
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/people1.jpeg",
                                      height: 20,
                                      width: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
//--------------------------------------------2nd Picture -----------------------------------------------------------------------------

                                Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.007,
                                    right: MediaQuery.of(context).size.width *
                                        0.01,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            shape: BoxShape.circle),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            "assets/images/person1.png",
                                            fit: BoxFit.cover,
                                            height: 15,
                                            width: 15,
                                          ),
                                        ))),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),

                          //------------------------------------- User & Astrologer ----------------------------------------------------------------------
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              Text(
                                "& Astrologer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          //----------------------------------------Divider ----------------------------------------------------------------------------
                          const VerticalDivider(
                            indent: 2,
                            endIndent: 2,
                            color: Colors.white,
                          ),
                          //--------------------------------------------------------02m 04s ---------------------------------------------------------------
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(right: 3),
                              child: Text(
                                '02 m 04 s',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 9),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                ),

                //.................Follower...................//
                Container(
                  height: MediaQuery.of(context).size.height * 0.046,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '7.1K',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 12,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),

                //-------------------------close Button-------------------------------------------------------
                Container(
                    height: MediaQuery.of(context).size.height * 0.046,
                    width: MediaQuery.of(context).size.width * 0.1,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(40)),
                    child: IntrinsicHeight(
                        child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.close),
                      color: Colors.white,
                      iconSize: 20,
                    )))
              ],
            ),
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height * 0.003),

//-----------------------------------------------Trending ---------------------------------------------------------------------------------
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.038,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.auto_graph_rounded),
                  color: Colors.white,
                  iconSize: 20,
                ),
                const Text(
                  'Trending',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

//-----------------------------------------------------------------Bottom Container Live screen-----------------------------------------------

class Section extends StatefulWidget {
  const Section({super.key});

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          width: 140,
          child: buildBlur(
            borderRadius: BorderRadius.circular(0),
//---------------------------------------------------------Say hii Container-------------------------------------------------------------------------------
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Say Hi...',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        //--------------------------------------------------flip camera ------------------------------------------------------------------------
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.flip_camera_ios_outlined,
            color: Colors.white,
          ),
        ),
        //-----------------------------------------------------mic off--------------------------------------------------------------
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mic_off_outlined,
            color: Colors.white,
          ),
        ),
        //-------------------------------------------------------Rs14m Rs16m ---------------------------------------------------------------------------------------------
        SizedBox(
          height: 40,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Positioned(
              top: 3,
              right: 0,
              left: 0,
              bottom: 145,
              child: buildBlur(
                borderRadius: BorderRadius.circular(0),
                child: Container(
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_outlined,
                              color: Colors.white,
                              size: 12,
                            ),
                            Text(
                              '14/m',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.currency_rupee_outlined,
                              color: Colors.white,
                              size: 12,
                            ),
                            Text(
                              '16/m',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red.shade900),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//--------------------------------------------------side bar content ------------------------------------------------------------------------------------------------

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.3),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.send,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.3),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.card_giftcard_rounded,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.3),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.hourglass_top_rounded,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.3),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AstroDashBoardPage()));
          },
          icon: const Icon(
            Icons.call_end_rounded,
            color: Colors.red,
            size: 24,
          ),
        ),
      ),
    ]);
  }
}

//----------------------------------------- People icon Container ---------------------------------------------

class People extends StatefulWidget {
  const People({super.key});

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/people1.jpeg",
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Joined',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//-----------------------------------------------Home Page  Container ------------------------------------------------------

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Stack(
        children: [
          Image.asset('assets/images/rectangle.png'),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        child: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '05th April',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '12 calls',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '9 chats',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Complete 2 more calls to \nachieve today’s incentive goal',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //-----------

          //--------
          Padding(
            padding: const EdgeInsets.only(left: 180, top: 20),
            child: Column(children: [
              CircularPercentIndicator(
                radius: 30,
                lineWidth: 5,
                percent: 0.65,
                progressColor: Colors.white60,
                backgroundColor: Colors.white.withOpacity(0.3),
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text(
                  '      65%\n Complete',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),

              //
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            '720',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Text(
                        'Earnings',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '12',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Call Received',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Waiting',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Canceled',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}

//--------------------------percent progress bar----------------------------------
class PercentProgressBar extends StatefulWidget {
  const PercentProgressBar({super.key});

  @override
  State<PercentProgressBar> createState() => _PercentProgressBarState();
}

class _PercentProgressBarState extends State<PercentProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircularPercentIndicator(
        radius: 30,
        lineWidth: 7,
        percent: 0.65,
        progressColor: Colors.white60,
        backgroundColor: Colors.white.withOpacity(0.3),
        circularStrokeCap: CircularStrokeCap.round,
        center: const Text(
          '      65%\n Complete',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),

      //
      const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.currency_rupee_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    '720',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Text(
                'Earnings',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '12',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Call Received',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Waiting',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Canceled',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    ]);
  }
}

import 'package:astrology_app/astropage/apply_leave_screen.dart';
import 'package:astrology_app/astropage/article/articles.dart';
import 'package:astrology_app/astropage/history.dart';
import 'package:astrology_app/astropage/chat.dart';
import 'package:astrology_app/astropage/earning_screen.dart';
import 'package:astrology_app/astropage/Go%20Live/go_live_screen.dart';
import 'package:astrology_app/astropage/login_hour.dart';
import 'package:astrology_app/astropage/payment_report_screen.dart';
import 'package:astrology_app/astropage/set_rate.dart';
import 'package:astrology_app/astropage/shortcuts/shortcuts_screen.dart';
import 'package:astrology_app/astropage/support/support_screen.dart';
import 'package:astrology_app/astropage/update_category.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:super_tooltip/super_tooltip.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

//-------------------------Percent Indicator--------------
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

// //---------------------------------Flutter Switch-----------------
// class HPFlutterswitch extends StatefulWidget {
//   const HPFlutterswitch(
//       {super.key,
//       required this.width,
//       required this.height,
//       required this.onToggle,
//       required this.value});
//   final double width;
//   final double height;
//   //final void onToggle;
//   final bool value;
//   final Function(bool) onToggle;

//   @override
//   State<HPFlutterswitch> createState() => _HPFlutterswitchState();
// }

// class _HPFlutterswitchState extends State<HPFlutterswitch> {
//   // bool online_status = false;
//   bool call_status = false;
//   bool chat_status = false;

//   @override
//   Widget build(BuildContext context) {
//     return FlutterSwitch(
//       activeColor: Colors.white.withOpacity(0.2),
//       inactiveToggleColor: Colors.white,
//       inactiveColor: Colors.white.withOpacity(0.2),
//       activeToggleColor: Colors.green,
//       valueFontSize: 10,
//       value: widget.value,
//       borderRadius: 15,
//       toggleSize: 18,
//       activeTextColor: Colors.white,
//       showOnOff: true,
//       onToggle: widget.onToggle,
//     );
//   }
// }

//-------------------------Grid View Class ----------------------------------------------
class GridClass extends StatefulWidget {
  const GridClass({super.key});

  @override
  State<GridClass> createState() => _GridClassState();
}

class _GridClassState extends State<GridClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
          physics: const BouncingScrollPhysics(
              parent: NeverScrollableScrollPhysics()),
          itemCount: astroHome.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            childAspectRatio: 0.95,
          ),
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => tapped(index),
            child: AstroHome(
                image: astroHome[index].image, title: astroHome[index].title),
          ),
        ),
      ),
    );
  }

  tapped(int index) {
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HistoryPage()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const GoLivePage()));
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ShortcutsPage()));
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SetRate()));
    } else if (index == 4) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SupportPage()));
    } else if (index == 5) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginHour()));
    } else if (index == 6) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const UpdatePage()));
    } else if (index == 7) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PaymentReportPage()));
    } else if (index == 8) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ArticlePage(
                    tabname: 'submit',
                  )));
    } else if (index == 9) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ApplyLeavePage()));
    } else if (index == 10) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EarningPage()));
    } else if (index == 11) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Chat()));
    }
  }
}

class AstroHomeDetails {
  late String image, title;

  AstroHomeDetails({
    required this.image,
    required this.title,
  });
}

List<AstroHomeDetails> astroHome = [
  AstroHomeDetails(
    image: "assets/images/call_details.png",
    title: "History",
  ),
  AstroHomeDetails(
    image: "assets/images/go_live.png",
    title: "Go live",
  ),
  AstroHomeDetails(
    image: "assets/images/shortcuts.png",
    title: "Shortcuts",
  ),
  AstroHomeDetails(
    image: "assets/images/set_rate.png",
    title: "Set Rate",
  ),
  AstroHomeDetails(
    image: "assets/images/support.png",
    title: "Support",
  ),
  AstroHomeDetails(
    image: "assets/images/login_hours.png",
    title: "Login Hours",
  ),
  AstroHomeDetails(
    image: "assets/images/update.png",
    title: "Update",
  ),
  AstroHomeDetails(
    image: "assets/images/payment_report.png",
    title: "Payment Report",
  ),
  AstroHomeDetails(
    image: "assets/images/articles.png",
    title: "Articles",
  ),
  AstroHomeDetails(
    image: "assets/images/apply_leave.png",
    title: "Apply Leave",
  ),
  AstroHomeDetails(
    image: "assets/images/earnings.png",
    title: "Earnings",
  ),
  AstroHomeDetails(
    image: "assets/images/chat.png",
    title: "Chats",
  ),
];

class AstroHome extends StatelessWidget {
  const AstroHome({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                image,
                height: 30,
                width: 25,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(fontSize: 13, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

//----------------pop up design =- Boost My Profile --------------------
class BoostMyProfile extends StatelessWidget {
  const BoostMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlurryContainer(
        color: Colors.white.withOpacity(0.15),
        blur: 3,
        elevation: 10,
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ))
              ],
            ),
            Text(
              AppLocalizations.of(context).boostMyProfile,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'You will be featured in JyotishBani and your\npercentage will go down by (10%).\nDo you want to proceed?',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadioButton(
                  elevation: 0,
                  absoluteZeroSpacing: false,
                  spacing: 5,
                  unSelectedColor: Colors.grey.withOpacity(0.3),
                  selectedBorderColor: Colors.blue,
                  unSelectedBorderColor: Colors.blue,
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.37,
                  shapeRadius: 10,
                  enableShape: true,
                  radius: 10,
                  buttonLables: const [
                    'NO',
                    'YES',
                  ],
                  buttonValues: const [
                    "NO",
                    "YES",
                  ],
                  buttonTextStyle: const ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Colors.white,
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  radioButtonValue: (value) {
                    //print(value);
                  },
                  selectedColor: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//----------------------Notification------------------------------------

class NotificationItem {
  final String title;
  final String description;

  NotificationItem(this.title, this.description);
}

class NotificationBell extends StatefulWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NotificationBellState createState() => _NotificationBellState();
}

class _NotificationBellState extends State<NotificationBell> {
  bool showNotificationContainer = false;
  bool notificationsViewed = false;
  SuperTooltipController tooltipController = SuperTooltipController();

  List<NotificationItem> notifications = [
    NotificationItem(
      'Venus Rises in Cancer - Impact?',
      'This phenomenon will bring major changes in...',
    ),
    NotificationItem(
      'Venus Rises in Cancer - Impact?',
      'This phenomenon will bring major changes in...',
    ),
    NotificationItem(
      'Venus Rises in Cancer - Impact?',
      'This phenomenon will bring major changes in...',
    ),
    NotificationItem(
      'Venus Rises in Cancer - Impact?',
      'This phenomenon will bring major changes in...',
    ),
    NotificationItem(
      'Venus Rises in Cancer - Impact?',
      'This phenomenon will bring major changes in...',
    ),
  ];

  void toggleNotificationContainer() {
    setState(() {
      showNotificationContainer = !showNotificationContainer;
      if (showNotificationContainer) {
        notificationsViewed = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: 30,
            right: 150,
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    IconButton(
                      onPressed: toggleNotificationContainer,
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    if (!notificationsViewed)
                      Positioned(
                        right: 15,
                        top: 14,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (showNotificationContainer)
            Positioned(
              top: 11,
              left: 40,
              right: 0,
              bottom: 740,
              child: SuperTooltip(
                left: 40,
                right: 50,
                arrowTipDistance: 5.0,
                arrowBaseWidth: 20.0,
                arrowLength: 18.0,
                showBarrier: true,
                borderColor: Colors.grey.shade500,
                popupDirection: TooltipDirection.down,
                controller: tooltipController,
                touchThroughAreaShape: ClipAreaShape.rectangle,
                touchThroughAreaCornerRadius: 50,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.white.withOpacity(0.15),
                content: SizedBox(
                  height: 310,
                  child: ListView.builder(
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 8, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        notifications[index].title,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white54,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        notifications[index].description,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                    ),
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey.shade700,
                            height: 10,
                            thickness: 2,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:astrology_app/astropage/HomePage_astrologer/hpclass.dart';
import 'package:astrology_app/widget/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AstroDashBoardPage extends StatefulWidget {
  const AstroDashBoardPage({super.key});

  @override
  State<AstroDashBoardPage> createState() => _AstroDashBoardPageState();
}

class _AstroDashBoardPageState extends State<AstroDashBoardPage> {
  // ignore: non_constant_identifier_names
  bool online_status = false;
  // ignore: non_constant_identifier_names
  bool call_status = false;
  // ignore: non_constant_identifier_names
  bool chat_status = false;

  @override
  Widget build(BuildContext context) {
    var hgt = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/dblogo.jpg',
                        height: 100,
                        width: 100,
                      ),
                      const Spacer(),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.help_outline,
                                  size: 27,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            const NotificationBell());
                                  },
                                  icon: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                  )),
                              FlutterSwitch(
                                width: Responsive.isMobile(context)
                                    ? wid / 5.5
                                    : wid / 3,
                                height: Responsive.isMobile(context)
                                    ? hgt / 29
                                    : hgt / 5,
                                activeColor: Colors.white.withOpacity(0.2),
                                inactiveToggleColor: Colors.white,
                                inactiveColor: Colors.white.withOpacity(0.2),
                                activeToggleColor:
                                    const Color.fromARGB(255, 21, 200, 27),
                                valueFontSize: 10,
                                value: online_status,
                                borderRadius: 15,
                                toggleSize: 18,
                                activeText: AppLocalizations.of(context).online,
                                inactiveText: AppLocalizations.of(context).offline,
                                activeTextColor: Colors.white,
                                showOnOff: true,
                                onToggle: (sStatus) {
                                  setState(() {
                                    online_status = sStatus;
                                  });
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                     Text(
                                      AppLocalizations.of(context).calls,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    FlutterSwitch(
                                      width: Responsive.isMobile(context)
                                          ? wid / 8
                                          : wid / 3,
                                      height: Responsive.isMobile(context)
                                          ? hgt / 40
                                          : hgt / 5,
                                      activeColor:
                                          Colors.white.withOpacity(0.2),
                                      inactiveToggleColor: Colors.white,
                                      inactiveColor:
                                          Colors.white.withOpacity(0.2),
                                      activeToggleColor: Colors.green,
                                      valueFontSize: 10,
                                      value: call_status,
                                      borderRadius: 15,
                                      toggleSize: 10.0,
                                      activeTextColor: Colors.white,
                                      showOnOff: true,
                                      onToggle: (sStatus) {
                                        setState(() {
                                          call_status = sStatus;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                     Text(
                                      AppLocalizations.of(context).chat,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    FlutterSwitch(
                                      width: Responsive.isMobile(context)
                                          ? wid / 8
                                          : wid / 3,
                                      height: Responsive.isMobile(context)
                                          ? hgt / 40
                                          : hgt / 5,
                                      activeColor:
                                          Colors.white.withOpacity(0.2),
                                      inactiveToggleColor: Colors.white,
                                      inactiveColor:
                                          Colors.white.withOpacity(0.2),
                                      activeToggleColor: Colors.green,
                                      valueFontSize: 10,
                                      value: chat_status,
                                      borderRadius: 15,
                                      toggleSize: 10.0,
                                      activeTextColor: Colors.white,
                                      showOnOff: true,
                                      onToggle: (sStatus) {
                                        setState(() {
                                          chat_status = sStatus;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(
                  height: 15,
                ),
                const HomeContainer(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const BoostMyProfile());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context).boostMyProfile,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const GridClass(),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: GridView.builder(
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //       crossAxisSpacing: 20,
                //       childAspectRatio: 0.95,
                //     ),
                //     itemCount: astroHome.length,
                //     shrinkWrap: true,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemBuilder: (context, index) => AstroHome(
                //       image: astroHome[index].image,
                //       title: astroHome[index].title,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today's Earnings:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          '720',
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
    title: "Call Details",
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
              // color: Colors.blue[400]
            ),
            child: Center(
              child: Image.asset(
                image,
                height: 22,
                width: 22,
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
              style: const TextStyle(
                  fontSize: 13,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

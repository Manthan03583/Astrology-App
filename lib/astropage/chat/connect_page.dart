import 'package:astrology_app/astropage/bottom_nav_bar/bottom.dart';
import 'package:astrology_app/astropage/chat/chat_tab_screen.dart';
import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        //height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 48, 0, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                     const CustomBottomNavigationBar()));
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                          size: 28,
                        ),
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Connect",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 19),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 15,
              // ),

              //...........****TabView******............//

              // const Flexible(
              //     child: TabBarView(
              //   message: 'chat',
              // )),

              const Flexible(child: ChatTabView()),
              // ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

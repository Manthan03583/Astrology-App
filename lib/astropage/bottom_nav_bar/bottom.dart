import 'dart:ui';

import 'package:astrology_app/astropage/HomePage_astrologer/dashboard_screen.dart';
import 'package:astrology_app/astropage/chat/connect_page.dart';
import 'package:astrology_app/astropage/payment_report_screen.dart';
import 'package:astrology_app/astropage/profilepage/profileimage.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  bool onclick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.001,
            bottom: MediaQuery.of(context).size.height * 0.02),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: FloatingActionButton(
            child: Icon(
              onclick
                  ? Icons.cancel_outlined
                  : Icons.add_circle_outline_outlined,
              size: 30,
            ),
            //tooltip:  ,
            onPressed: () {
              setState(() {
                onclick = !onclick;
                if (onclick = true){
                  
                }
              });
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const AddStory());
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.0001,
            0,
            MediaQuery.of(context).size.width * 0.0001,
            MediaQuery.of(context).size.height *
                0.003), //padding for floatbutton
        child: Stack(
          children: [
            Image.asset('assets/images/Subtract.png'),
            BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 0,
              color: Colors.transparent,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _onTabSelected(0),
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.home_filled,
                                color: _currentIndex == 0
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: _currentIndex == 0
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(),
                      ),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _onTabSelected(1),
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.chat,
                                color: _currentIndex == 1
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              Text(
                                'Connect',
                                style: TextStyle(
                                  color: _currentIndex == 1
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _onTabSelected(2),
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.payment,
                                color: _currentIndex == 2
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              Text(
                                'Payments',
                                style: TextStyle(
                                  color: _currentIndex == 2
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _onTabSelected(3),
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.person_2,
                                color: _currentIndex == 3
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(
                                  color: _currentIndex == 3
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
      extendBody: true,
      body: bodyContainer(),
    );
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget bodyContainer() {
    var pagesData = [
      const AstroDashBoardPage(),
      const ConnectPage(),
      const PaymentReportPage(),
      const ProfileImage(),
    ];
    return SizedBox(
      child: Center(child: pagesData.elementAt(_currentIndex)),
    );
  }
}

class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 135),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: BlurryContainer(
          color: Colors.white.withOpacity(0.1),
          blur: 3,
          elevation: 10,
          height: MediaQuery.of(context).size.height * 0.172,
          width: MediaQuery.of(context).size.width * 0.35,
          child: Column(
            children: [
              const Text(
                'Add a story',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.videocam_rounded),
                    color: Colors.white,
                  ),
                  const Text(
                    'Video',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.image_outlined),
                    color: Colors.white,
                  ),
                  const Text(
                    'Photo',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

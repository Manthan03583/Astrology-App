import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:astrology_app/astropage/Go%20Live/live.dart';
import 'package:flutter/material.dart';

class GoLivePage extends StatefulWidget {
  const GoLivePage({super.key});

  @override
  State<GoLivePage> createState() => _GoLivePageState();
}

class _GoLivePageState extends State<GoLivePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Go Live',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 550,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'To be noted when go',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GoLP(
                        text: 'Avoid sharing any personal details.',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GoLP(
                        text:
                            'Do not turn off the video/mic and \nkeep the session engaging',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GoLP(
                        text:
                            'Double-check your network \nconnectivity and presentation',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GoLP(
                        text: 'Make more followers,pin topics and \nEarn more.',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GoLP(
                        text:
                            'Avoid answering unborn child \ngender,death prediction and \nlottery-numberrelated questions.',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 23,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Note:- Appropriate penalty will be \nimposed as per the JyotishBani \nAgreement if any of these \nconditions is violated and the  \naccount will be temporarily \ndeactivated. Furthermore, the \nJyotishBani verified Badge shall be \nremoved on violation form your \nprofile.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 250, 51, 37),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AllButtonPage(
                  btnText: 'GoLive',
                  pressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LiveScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

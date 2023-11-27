import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HelpAstro extends StatefulWidget {
  const HelpAstro({super.key});

  @override
  State<HelpAstro> createState() => _HelpAstroState();
}

class _HelpAstroState extends State<HelpAstro> {
  bool online_status = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
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
                    "Help",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Please allow “display over other app” permission to receive chat request when your device is locked. Go to [App info > Advanced > Display over other apps.]',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6), fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
                child: Row(
                  children: [
                    Text(
                      'Allow display over other apps',
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    Spacer(),
                    FlutterSwitch(
                      width: 60,
                      height: 23,
                      activeColor: Colors.white.withOpacity(0.2),
                      inactiveToggleColor: Colors.white,
                      inactiveColor: Colors.white.withOpacity(0.2),
                      activeToggleColor: const Color.fromARGB(255, 21, 200, 27),
                      valueFontSize: 10,
                      value: online_status,
                      borderRadius: 15,
                      toggleSize: 18,
                      //activeText: 'Online',
                      //inactiveText: 'Offline',
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
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Allow this app to be displayed on top of other apps you’re using. This app will be able to see where you tap or change what’s displayed on the screen.',
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('Send Report')))
            ],
          ),
        ),
      ),
    );
  }
}

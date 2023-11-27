import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SetRate extends StatefulWidget {
  const SetRate({super.key});

  @override
  State<SetRate> createState() => _SetRateState();
}

class _SetRateState extends State<SetRate> {
  final callRateController = TextEditingController();
  final calldiscountController = TextEditingController();
  final callafterdiscountController = TextEditingController();
  Future<void> postingData(String baseUrl, String api) async {
    var uri = Uri.parse(baseUrl + api);

    var payload = json.encode({
      "callRate": callRateController.text,
      "discount": calldiscountController.text,
      "callRateAfterDiscount": callafterdiscountController.text
    });
    Map<String, String> header = {
      "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY4ODU0MjgyNCwiZXhwIjoxNjg4NzE1NjI0fQ.fm7C75DdEg7tznSY8OHGCkGmNbjiMoozyOfaFWVncmA",
    };

    try {
      var response = await http.post(uri, body: payload, headers: header);
      var res = json.decode(response.body);
      print(res);
      // if (response.statusCode == 200) {

      // }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

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
                    "Set Rate",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Call/ Chat/ Private Call Rate: ",
                      style: TextStyle(
                          fontSize: 17,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                  ),
                  Text(
                    'Call/ Chat/ Private Call Rate(Rupees/minute)',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                width: 330,
                child: TextFormField(
                  controller: callRateController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                      enabled: true,
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                  ),
                  Text(
                    'Call/ Chat/ Private Call Discount (%)',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                width: 330,
                child: TextFormField(
                  controller: calldiscountController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                  decoration: InputDecoration(
                      enabled: true,
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                  ),
                  Text(
                    'Call/ Chat/ Private Call Rate After Discount\n(Rupees/Minute)',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                width: 330,
                child: TextFormField(
                  controller: callafterdiscountController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                  //callafterdiscountController = callRate * (callRateDiscount / 100),
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      enabled: true,
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 190,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      postingData(
                          "https://astro.corponizers.com/", "createrate");
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LoginHour()));
                    },
                    child: const Text(
                      "Update",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 191, 122),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 17)),
                    const Text(
                      "Live Rate",
                      style: TextStyle(
                          fontSize: 17,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:astrology_app/controller/controller.dart';
import 'package:flutter/material.dart';

class LoginHour extends StatefulWidget {
  const LoginHour({super.key});

  @override
  State<LoginHour> createState() => _LoginHourState();
}

class _LoginHourState extends State<LoginHour> {
  late DateTime fromDate;
  late DateTime toDate;
  late String apiFromDate;
  late String apiToDate;

  final TextEditingController toController = TextEditingController();
  final TextEditingController fromController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  bool isLoginHourLoaded = false;
  String finalLoginHour = '';

  // @override
  // void initState() {
  //   getTotalLoginHours().whenComplete(() => isLoginHourLoaded=true);
  //   super.initState();
  // }

  // Future<void> getTotalLoginHours() async{
    
  //   try{
  //     final totalTime = await Controller.getTotalLoginHour();
  //     setState(() {
  //       finalLoginHour = totalTime;
  //     });
  //   }catch(e){
  //     throw Exception(e);
  //   }
  // }

  // void update() async {
  //   try {
  //     final data = await Controller.loginHour(apiFromDate, apiToDate);
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text(data.toString())));
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child:SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                      "Login Hours",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                isLoginHourLoaded ?
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      const Text(
                        'From',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      const Spacer(),
                      ContainerField(
                          passController: fromController,
                          press: () {
                            const CalenderNM();
                            setState(() {
                              _selectDate(context, true);
                            });
                          }),
                      const Spacer(),
                      const Text(
                        'To',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      ContainerField(
                        passController: toController,
                        press: () {
                          CalenderNM();
                          setState(() {
                            _selectDate(context, false);
                          });
                        },
                      ),
                    ],
                  ),
                ): const Center(child: CircularProgressIndicator()),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 190,
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        // update();
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 25, right: 50),
                  child: Row(
                    children:  [
                      Text(
                        'Summary',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Spacer(),
                      Text(
                        '(Hour:Min:Sec)',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: summeryName.length,
                    itemBuilder: (context, index) => Result(
                          from: summeryName[index].from,
                          to: summeryName[index].to,
                        )),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ArticlePage()));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 191, 122),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Total Login Hours",
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                          const Spacer(),
                          Text(
                            finalLoginHour.toString(),
                            style: const TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    String formatDate;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        if (isFromDate) {
          selectedDate = picked;

          formatDate =
              "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
          fromController.text = formatDate.toString();

          apiFromDate =
              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
          fromDate = picked;
        } else {
          selectedDate = picked;

          formatDate =
              "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
          toController.text = formatDate.toString();
          apiToDate =
              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
          toDate = picked;
        }
      });
    }
  }

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(1800),
  //       lastDate: DateTime(2060));
  //   if (pickedDate != null) {
  //     formDate = pickedDate;
  //     fromController.text = DateFormat('dd-mm-yyyy').format(formDate);
  //     print(
  //         'Date selected : ${pickedDate.day}-${pickedDate.month}-${pickedDate.year}');
  //   } else {
  //     toDate = pickedDate!;
  //     toController.text = DateFormat('dd-mm-yyyy').format(toDate);
  //     print('Date is not selected');
  //   }
  // }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   DateTime selectedDate = DateTime.now();

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2015, 8),
//         lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text("${selectedDate.toLocal()}".split(' ')[0]),
//             const SizedBox(
//               height: 20.0,
//             ),
//             ElevatedButton(
//               onPressed: () => _selectDate(context),
//               child: const Text('Select date'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore: non_constant_identifier_names
DateFormat(String s) {}

List<Summery> summeryName = List.empty();

class Summery {
  late String from;
  late String to;
  Summery({required this.from, required this.to});
}

class Result extends StatelessWidget {
  const Result({super.key, required this.from, required this.to});
  final String from, to;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [Text(from), const Spacer(), Text(to)],
      ),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   DateTime selectedDate = DateTime.now();

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2015, 8),
//         lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text("${selectedDate.toLocal()}".split(' ')[0]),
//             const SizedBox(
//               height: 20.0,
//             ),
//             ElevatedButton(
//               onPressed: () => _selectDate(context),
//               child: const Text('Select date'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore: non_constant_identifier_names

class CalenderNM extends StatefulWidget {
  const CalenderNM({super.key});

  @override
  State<CalenderNM> createState() => _CalenderNMState();
}

class _CalenderNMState extends State<CalenderNM> {
  TextEditingController _birthdate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: () async {
            // final DateTime date = DateTime(2023, 6, 3);
            // final DateFormat dateFormat = DateFormat('dd MMMM yyyy');
            // final String formattedDate = dateFormat.format(date);

            String formatDate;
            DateTime? selectedDate = DateTime.now();
            DateTime? pickedate = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(1800),
              lastDate: DateTime(3000),
            );

            if (pickedate != null && pickedate != selectedDate) {
              setState(() {
                selectedDate = pickedate;
                formatDate =
                    "${selectedDate!.day} / ${selectedDate!.month} / ${selectedDate!.year}";
                _birthdate.text = formatDate.toString();
              });
            }
          },
          child: TextField(
            controller: _birthdate,
            enabled: false,
            style: const TextStyle(color: Colors.white, fontSize: 17),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.calendar_month_outlined),
              hintText: 'Enter Date Of Birth',
              hintStyle: TextStyle(color: Colors.white),
              prefixIconColor: Colors.white,
              filled: true,
              fillColor: Colors.black.withOpacity(0.2),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerField extends StatelessWidget {
  const ContainerField({super.key, required this.passController, this.press});
  final TextEditingController passController;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      // child: TextFormField(
      //   controller: passController,
      //   style: const TextStyle(color: Colors.white, fontSize: 17),
      //   keyboardType: TextInputType.none,
      //   decoration: InputDecoration(
      //     filled: true,
      //     fillColor: Colors.black.withOpacity(0.2),
      //     disabledBorder: const OutlineInputBorder(
      //         borderSide: BorderSide(
      //           color: Colors.white,
      //         ),
      //         borderRadius: BorderRadius.all(Radius.circular(15))),
      //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      //     enabledBorder: const OutlineInputBorder(
      //         borderSide: BorderSide(
      //           color: Colors.white,
      //         ),
      //         borderRadius: BorderRadius.all(Radius.circular(15))),
      //   ),
      // decoration: InputDecoration(
      //     focusColor: Colors.white,
      //     enabled: true,
      //     filled: true,
      //     fillColor: Colors.black.withOpacity(0.2),
      //     enabledBorder: const OutlineInputBorder(
      //       borderSide: BorderSide(
      //         color: Colors.white,
      //       ),
      //     ),
      //     border: const OutlineInputBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(15)))),

      // onTap: press,
      // onTap: () async {
      //   DateTime? pickeddate = await showDatePicker(
      //       context: context,
      //       initialDate: DateTime.now(),
      //       firstDate: DateTime(1800),
      //       lastDate: DateTime(2080));

      //   if (pickeddate != null) {
      //     setState(() {
      //       fromController.text = DateFormat('yyyy-mm-dd').format(pickeddate);
      //     }
      // );
      //   }
      // },

      child: TextField(
        controller: passController,
        keyboardType: TextInputType.none,
        onTap: press,
        enabled: true,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black.withOpacity(0.2),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
      ),
    );
  }
}

// class Divider extends StatelessWidget {
//   const Divider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Card(
//                 child: SizedBox.expand(),
//               ),
//             ),
//             Divider(),
//             Expanded(
//               child: Card(
//                 child: SizedBox.expand(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

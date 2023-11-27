import 'package:astrology_app/allclass/calender_screen.dart';
import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:astrology_app/astropage/earning_screen.dart';
import 'package:flutter/material.dart';

class CallDetailsPage extends StatefulWidget {
  const CallDetailsPage({super.key});

  @override
  State<CallDetailsPage> createState() => _CallDetailsPageState();
}

class _CallDetailsPageState extends State<CallDetailsPage> {
  late DateTime fromDate;
  late DateTime toDate;
  final DateTime _selectedDate = DateTime.now();

  final fromDateController = TextEditingController();
  final toDateController = TextEditingController();

  @override
  void dispose() {
    fromDateController.dispose();
    toDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeadLine(
                  text: 'Call Details',
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        'My JB Earnings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalenderPage(
                    text: 'Form Date',
                    text1: _selectedDate.toString(),
                    controller: fromDateController,
                    press: () {
                      setState(() {
                        _selectDate(context);
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalenderPage(
                    text: 'To Date',
                    text1: _selectedDate.toString(),
                    controller: toDateController,
                    press: () {
                      setState(() {
                        _selectDate(context);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AllButtonPage(
                    btnText: 'Find Order',
                    pressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EarningPage()));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    ),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: const [
                            DurationP(),
                            Divider(
                              thickness: 1,
                              color: Color.fromARGB(255, 64, 64, 64),
                            ),
                            DurationP(),
                          ],
                        ),
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime(2060));
    if (pickedDate != null && pickedDate != _selectedDate) {
      fromDate = pickedDate;
      fromDateController.value = TextEditingValue(text: pickedDate.toString());
    } else {
      toDate = pickedDate!;
      toDateController.value = TextEditingValue(text: pickedDate.toString());
    }
  }
}

// ignore: non_constant_identifier_names
DateFormat(String s) {}

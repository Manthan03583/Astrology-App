import 'package:astrology_app/allclass/calender_screen.dart';
import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late DateTime fromDate;
  late DateTime toDate;
  DateTime selectedDate = DateTime.now();

  final _fromDateController = TextEditingController();
  final _toDateController = TextEditingController();

  @override
  void dispose() {
    _fromDateController.dispose();
    _toDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const HeadLine(text: 'History'),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "My JB Earnings",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalenderPage(
                    text: 'From Date',
                    text1: selectedDate.toString(),
                    controller: _fromDateController,
                    press: () {
                      _selectDate(context, true);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalenderPage(
                    text: 'To Date',
                    text1: selectedDate.toString(),
                    controller: _toDateController,
                    press: () {
                      setState(() {
                        _selectDate(context, false);
                      });
                    },
                  ),
                ),
                AllButtonPage(btnText: "Find Order", pressed: () {}),
                const SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: const Column(
                    children: [
                      DurationP(),
                      Divider(
                        color: Color.fromARGB(255, 138, 137, 137),
                      ),
                      DurationP(),
                    ],
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
              "${selectedDate.day} -${selectedDate.month} -${selectedDate.year}";
          _fromDateController.text = formatDate.toString();
          fromDate = picked;
        } else {
          selectedDate = picked;
          formatDate =
              "${selectedDate.day} -${selectedDate.month} -${selectedDate.year}";
          _toDateController.text = formatDate.toString();
          toDate = picked;
        }
      });
    }
  }
}

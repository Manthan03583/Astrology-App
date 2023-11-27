import 'package:astrology_app/allclass/calender_screen.dart';
import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:flutter/material.dart';

class ApplyLeavePage extends StatefulWidget {
  const ApplyLeavePage({super.key});

  @override
  State<ApplyLeavePage> createState() => _ApplyLeavePageState();
}

class _ApplyLeavePageState extends State<ApplyLeavePage> {
  late DateTime fromDate;
  late DateTime toDate;
  late String apiFromDate;
  late String apiToDate;

  DateTime selectedDate = DateTime.now();

  final _fromDateController = TextEditingController();
  final _toDateController = TextEditingController();
  final _descriptionController = TextEditingController();
  
  


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
                const HeadLine(text: 'Apply Leaves'),
                const SizedBox(
                  height: 20,
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
                const SizedBox(
                  height: 20,
                ),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: TextField(

                //     decoration: InputDecoration(
                //       enabledBorder: UnderlineInputBorder(
                //           borderSide: BorderSide(color: Colors.white)),
                //       hintText: 'Leave for 3 days',
                //       hintStyle: TextStyle(
                //         fontSize: 17,
                //         color: Color.fromARGB(255, 143, 142, 142),
                //       ),
                //     ),
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Note',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: TextField(
                      controller: _descriptionController,
                      style: const TextStyle(color: Colors.white),
                      textInputAction: TextInputAction.newline,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        hintMaxLines: 8,
                        border: InputBorder.none,
                        hintText: 'Please enter reason for applying leave',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AllButtonPage(
                    btnText: 'Apply',
                    pressed: () {
                      // createLeave();
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> _selectDate(BuildContext context) async {
  //   String _formatDate;
  //   DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(1800),
  //       lastDate: DateTime(3000));
  //   if (pickedDate != null && pickedDate != selectedDate) {
  //     setState(() {
  //       selectedDate = pickedDate;
  //       _formatDate ="${selectedDate.day} -${selectedDate.month} -${selectedDate.year}";
  //       _fromDateController.text = _formatDate.toString();
  //     });
  //   }
  //   else {
  //     setState(() {
  //       selectedDate = pickedDate!;
  //       _formatDate ="${selectedDate.day} -${selectedDate.month} -${selectedDate.year}";
  //       _toDateController.text = _formatDate.toString();
  //     });

  //   }
  // }

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(1800),
  //       lastDate: DateTime(2060));
  //   if (pickedDate != null && pickedDate != selectedDate) {
  //     fromDate = pickedDate;
  //     _fromDateController.value = TextEditingValue(text: pickedDate.toString());
  //   }
  //   else{
  //     toDate = pickedDate!;
  //     _toDateController.value = TextEditingValue(text: pickedDate.toString());
  //   }
  // }

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
          _fromDateController.text = formatDate.toString();
          apiFromDate =
              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
          fromDate = picked;
        } else {
          selectedDate = picked;

          formatDate =
              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
          _toDateController.text = formatDate.toString();
          toDate = picked;
          apiToDate =
              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
        }
      });
    }
  }
}

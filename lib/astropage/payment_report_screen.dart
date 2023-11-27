import 'package:astrology_app/allclass/calender_screen.dart';
import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:astrology_app/astropage/set_rate.dart';
import 'package:flutter/material.dart';

class PaymentReportPage extends StatefulWidget {
  const PaymentReportPage({super.key});

  @override
  State<PaymentReportPage> createState() => _PaymentReportPageState();
}

class _PaymentReportPageState extends State<PaymentReportPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            child: Column(children: [
              const HeadLine(
                text: 'Payment Report',
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Select Month & Year',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Month',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CalenderList()
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Year',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CalenderList()
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              AllButtonPage(
                btnText: 'Find Request',
                pressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              DataTable(
                columnSpacing: 25,
                border: TableBorder.all(
                    width: 1,
                    color: Colors.white,
                    style: BorderStyle.solid,
                    borderRadius: BorderRadius.circular(15)),
                headingRowColor: MaterialStateProperty.all(Colors.blue),
                headingTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                columns: const [
                  DataColumn(
                      label: Text('Find Report', textAlign: TextAlign.center)),
                  DataColumn(
                    label: Text('Amount', textAlign: TextAlign.center),
                  ),
                  //DataColumn(label: Text('Class')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text(
                      'Total Non JB Earning',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )),
                    DataCell(Text('0.0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    //DataCell(Text('6')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total JB Earning',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    DataCell(Text('83.0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    //DataCell(Text('9')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Total',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    DataCell(Text('83.0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    //DataCell(Text('8')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Less : TDS*',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    DataCell(Text('0.0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    //DataCell(Text('8')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Less : Software Maintainence',
                        style: TextStyle(color: Colors.white))),
                    DataCell(Text('0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    //DataCell(Text('8')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Net Payable',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    DataCell(Text('83.0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                    //DataCell(Text('8')),
                  ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              Row(
                children: const [
                  Text(
                    'In case of any query related to payment feel\nfree to write to us  ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 141, 140, 140),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const NoteP(text: 'Note:'),
              const NoteP(
                  text:
                      'Above payment has been calculated till the \nend of the previous month.'),
            ]),
          ),
        ),
      ),
    );
  }
}

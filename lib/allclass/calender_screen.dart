import 'package:flutter/material.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage(
      {super.key,
      required this.text,
      required this.controller,
      required this.press,
      required this.text1});
  final String text;
  final String text1;
  final TextEditingController controller;
  final void Function()? press;

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          child: GestureDetector(
            onTap: () {},
            child: TextField(
              keyboardType: TextInputType.none,
              controller: widget.controller,
              // enabled: false,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                helperText: widget.text1,
                // label: Text(widget.text1),
                hintStyle: const TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.calendar_month),
                ),
                suffixIconColor: Colors.white,
                filled: true,
                fillColor: Colors.black.withOpacity(0.2),
                focusColor: Colors.white,
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
              onTap: widget.press,
            ),
          ),
        ),
      ],
    );
  }
}

class CalenderList extends StatefulWidget {
  const CalenderList({
    super.key,
  });

  @override
  State<CalenderList> createState() => _CalenderListState();
}

class _CalenderListState extends State<CalenderList> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.38,
        child: InkWell(
          onTap: () {},
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 35,
                ),
              ),
              suffixIconColor: Colors.white,
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
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

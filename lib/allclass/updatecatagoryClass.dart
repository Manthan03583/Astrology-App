import 'package:flutter/material.dart';

class UpdateCatagory extends StatelessWidget {
  const UpdateCatagory(
      {super.key,
      required this.text,
      required this.text1,
      required this.icon,
      required this.press,
      required bool isClicked});
  final String text;
  final String text1;
  final void Function() press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 37,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  // color: const Color.fromARGB(98, 2, 82, 222),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: press,
                      icon: Icon(
                        icon,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

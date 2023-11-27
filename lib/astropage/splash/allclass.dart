import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignP extends StatefulWidget {
  const SignP({
    super.key,
    required this.text,
    required this.controller,
    required this.validator,
  });
  final String text;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<SignP> createState() => _SignPState();
}

class _SignPState extends State<SignP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.45,
          child: TextFormField(
            validator: widget.validator,
            keyboardType: TextInputType.name,
            // maxLength: 25,
            // enabled: false,
            style: const TextStyle(color: Colors.white),
            //autofocus: true,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
              hintText: widget.text,
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 129, 129, 129)),
              focusColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
      ],
    );
  }
}

class SignPage extends StatefulWidget {
  const SignPage({
    super.key,
    required this.text,
    required this.controller,
    required this.validator, required this.keyboardType, required this.inputFormatters,
  });
  final String text;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          child: TextFormField(
            validator: widget.validator,
            // enabled: false,
            style: const TextStyle(color: Colors.white),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
              hintText: widget.text,
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 129, 129, 129)),
              focusColor: Colors.white,
              filled: true,
              // fillColor: Colors.black.withOpacity(0.2),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(10)))
            ),
          ),
        ),
      ],
    );
  }
}

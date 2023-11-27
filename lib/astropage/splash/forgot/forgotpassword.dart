import 'package:astrology_app/astropage/splash/forgot/class.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formkeyl = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formkeyl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/fp.jpg',
                  // height: 90,
                  // width: 90,
                ),
                const SizedBox(
                  height: 20,
                ),
                 ForgotClass(
                  labeltext: AppLocalizations.of(context).email,
                ),
                ElevatedButton(
                    onPressed: () {
                      if(_formkeyl.currentState!.validate()) {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyOtp()));
                      }
                    },
                    child:  Text(
                      AppLocalizations.of(context).next,
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:astrology_app/controller/auth_controller.dart';
import 'package:astrology_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AstroLoginScreen extends StatefulWidget {
  const AstroLoginScreen({super.key});

  @override
  State<AstroLoginScreen> createState() => _AstroLoginScreenState();
}

class _AstroLoginScreenState extends State<AstroLoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.only(right: 25, left: 25),
          alignment: Alignment.center,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/astro_logo.png',
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context).signIn,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context).enterAnEmail,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: authController.emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.2),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)
                                    .enterAnEmail;
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-=?^_`{|}~]+@[a-zA-Z0-9]+\.[com]{3}$")
                                  .hasMatch(value)) {
                                return AppLocalizations.of(context).validEmail;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context).password,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: authController.passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            maxLength: 15,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.2),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            validator: (value) {
                              RegExp regex = RegExp(
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)
                                    .passRequired;
                              } else if (value.length < 8) {
                                return AppLocalizations.of(context)
                                    .conditionPassword;
                              } else if (!regex.hasMatch(value)) {
                                return AppLocalizations.of(context)
                                    .condition2Password;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.forgotPassword);
                            },
                            child: Text(
                              AppLocalizations.of(context).forgotPassword,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  authController.login();
                                  // Both email and password are valid, navigate to the next page.
                                  // Navigator.push(
                                  // context,
                                  // MaterialPageRoute(
                                  // builder: (context) =>
                                  //  const AstroDashBoardPage(),
                                  // ),
                                  //);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 10, 123, 216),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context).signIn,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context).donthaveaccount,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.009,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.signUp);
                        },
                        child: Text(
                          AppLocalizations.of(context).signUp,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

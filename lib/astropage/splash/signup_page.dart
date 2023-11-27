import 'package:astrology_app/astropage/bottom_nav_bar/bottom.dart';
import 'package:astrology_app/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AstroSignScreen extends StatefulWidget {
  const AstroSignScreen({Key? key}) : super(key: key);

  @override
  State<AstroSignScreen> createState() => _AstroSignScreenState();
}

class _AstroSignScreenState extends State<AstroSignScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final authController = Get.find<AuthController>();

  var selectedGender = '';
  var selectlanguage = '';

  void showGenderOptionsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RadioListTile(
                title: const Text('Male'),
                value: 'Male',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                    authController.genderController.text = value;
                    Navigator.pop(context);
                  });
                },
              ),
              RadioListTile(
                title: const Text('Female'),
                value: 'Female',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                    authController.genderController.text = value;
                    Navigator.pop(context);
                  });
                },
              ),
              RadioListTile(
                title: const Text('Other'),
                value: 'Other',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                    authController.genderController.text = value;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void showlanguageOptionsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RadioListTile(
                title: const Text('English'),
                value: 'English',
                groupValue: selectlanguage,
                onChanged: (value) {
                  setState(() {
                    selectlanguage = value!;
                    authController.selectlangController.text = value;
                    Navigator.pop(context);
                  });
                },
              ),
              RadioListTile(
                title: const Text('Hindi'),
                value: 'Hindi',
                groupValue: selectlanguage,
                onChanged: (value) {
                  setState(() {
                    selectlanguage = value!;
                    authController.selectlangController.text = value;
                    Navigator.pop(context);
                  });
                },
              ),
              RadioListTile(
                title: const Text('Odia'),
                value: 'Odia',
                groupValue: selectlanguage,
                onChanged: (value) {
                  setState(() {
                    selectlanguage = value!;
                    authController.selectlangController.text = value;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var hgt = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo2.png',
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context).signUp,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // First Name and Last Name
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          controller: authController.firstNController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: AppLocalizations.of(context).firstName,
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your First Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          controller: authController.lastNController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: AppLocalizations.of(context).lastName,
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your Last Name';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Gender Dropdown
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: authController.genderController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        hintText: AppLocalizations.of(context).gender,
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onTap: () {
                        showGenderOptionsDialog();
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Select Your Gender';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Phone Number
                  Row(
                    children: [
                      SizedBox(
                        height: 68,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: IntlPhoneField(
                          controller: authController.cntrycodeController,
                          style: const TextStyle(color: Colors.white),
                          dropdownTextStyle:
                              const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          initialCountryCode: 'IN',
                          showDropdownIcon: false,
                          flagsButtonPadding: const EdgeInsets.all(5),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: TextFormField(
                            maxLength: 10,
                            controller: authController.phoneController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 8.0,
                                bottom: 8.0,
                                top: 8.0,
                              ),
                              hintText: 'Phone No',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129),
                              ),
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            validator: (value) {
                              String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                              RegExp regExp = RegExp(patttern);
                              if (value!.isEmpty) {
                                return 'Enter mobile number';
                              } else if (!regExp.hasMatch(value)) {
                                return 'Please Enter valid mobile number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Email
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: authController.emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        hintText: AppLocalizations.of(context).emailId,
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter an Email address";
                        } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-=?^_`{|}~]+@[a-zA-Z0-9]+\.[com]{3}$")
                            .hasMatch(value)) {
                          return " Please Enter a Valid Email Address";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Experience
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: authController.experienceController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        hintText: AppLocalizations.of(context).experience,
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Experience';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // City and Country
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          controller: authController.cityController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: AppLocalizations.of(context).city,
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Your City';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: authController.countryController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: AppLocalizations.of(context).country,
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Your Country';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // System Known
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextFormField(
                      controller: authController.systemknownController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        hintText: AppLocalizations.of(context).systemKnown,
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value) ||
                            value == '') {
                          //allow upper and lower case alphabets and space
                          return "Enter Correct Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Select Language(s)
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextFormField(
                      controller: authController.selectlangController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        hintText: AppLocalizations.of(context).selectLang,
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onTap: () {
                        showlanguageOptionsDialog();
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Select Your Language';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Short Bio
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      maxLines: 5,
                      controller: authController.shortbioController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        hintText: AppLocalizations.of(context).shortBio,
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Write Something about yourself';
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    AppLocalizations.of(context).termsofUse,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CustomBottomNavigationBar(),
                                ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context).sendRequest,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
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

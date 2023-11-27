import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:astrology_app/allclass/updatecatagoryClass.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  bool _careerClicked = false;
  bool _vedicClicked = false;
  bool _tarotClicked = false;

  String category1 = "Career";
  String category2 = "Vedic";
  String category3 = "Tarot";

  void dropDown(String category, String value, bool clicked) {
    setState(() {
      category = value;
      clicked = !clicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          const HeadLine(text: "Update Catagory"),
          const SizedBox(
            height: 15,
          ),
          UpdateCatagory(
            text: '1. Catagory',
            text1: category1,
            icon: Icons.keyboard_arrow_down_outlined,
            press: () {
              setState(() {
                _careerClicked = !_careerClicked;
              });
            },
            isClicked: _careerClicked,
          ),
          const SizedBox(
            height: 15,
          ),
          _careerClicked
              ? Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category1 = "Career";
                                  _careerClicked = !_careerClicked;
                                });
                              },
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Career",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 117, 116, 116),
                                      fontSize: 17),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category1 = "Health";
                                  _careerClicked = !_careerClicked;
                                });
                              },
                              child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Health",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 117, 116, 116),
                                        fontSize: 17),
                                  )),
                            ),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category1 = "Love";
                                  _careerClicked = !_careerClicked;
                                });
                              },
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Love",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 117, 116, 116),
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(
                  height: 15,
                ),
          const SizedBox(
            height: 15,
          ),
          UpdateCatagory(
            text: '2. Catagory',
            text1: category2,
            icon: Icons.keyboard_arrow_down_outlined,
            press: () {
              setState(() {
                _vedicClicked = !_vedicClicked;
              });
            },
            isClicked: _vedicClicked,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: _vedicClicked
                ? Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category2 = "Vedic";
                                  _vedicClicked = !_vedicClicked;
                                });
                              },
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Vedic",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 117, 116, 116),
                                      fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category2 = "Numerology";
                                  _vedicClicked = !_vedicClicked;
                                });
                              },
                              child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Numerology",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 117, 116, 116),
                                        fontSize: 14),
                                  )),
                            ),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category2 = "KP";
                                  _vedicClicked = !_vedicClicked;
                                });
                              },
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "KP",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 117, 116, 116),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  category2 = "Vastu";
                                  _vedicClicked = !_vedicClicked;
                                });
                              },
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Vastu",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 117, 116, 116),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const SizedBox(height: 15),
          ),
          const SizedBox(
            height: 15,
          ),
          UpdateCatagory(
            text: '3. Catagory',
            text1: category3,
            icon: Icons.keyboard_arrow_down_outlined,
            press: () {
              setState(() {
                _tarotClicked = !_tarotClicked;
              });
            },
            isClicked: _tarotClicked,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: _tarotClicked
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    category3 = "Tarot";
                                    _tarotClicked = !_tarotClicked;
                                  });
                                },
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Tarot",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 117, 116, 116),
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    category3 = "Palmistry";
                                    _tarotClicked = !_tarotClicked;
                                  });
                                },
                                child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Palmistry",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 117, 116, 116),
                                          fontSize: 15),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 15,
                    )),
        ]),
      ),
    );
  }
}

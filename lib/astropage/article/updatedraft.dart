import 'package:astrology_app/astropage/article/articles.dart';
import 'package:astrology_app/controller/controller.dart';
import 'package:flutter/material.dart';

class UpdateDraft extends StatefulWidget {
  const UpdateDraft({super.key});

  @override
  State<UpdateDraft> createState() => _UpdateDraftState();
}

class _UpdateDraftState extends State<UpdateDraft> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  // Future<void> submitDraft() async {
  //   var data = await Controller.submitArticle(
  //       titleController.text, descriptionController.text);
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(
  //       data['count'].toString(),
  //       style: const TextStyle(fontSize: 26),
  //     ),
  //   ));
  // }



  // Future<void> deleteDraft() async {
  //   var data = await Controller.deleteDraftArticle("6");
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(
  //       data['count'].toString(),
  //       style: const TextStyle(fontSize: 26),
  //     ),
  //   ));
  // }

  // Future<void> updateDraft() async {
  //   var data = await Controller.updateDraftArticle('17',titleController.text,descriptionController.text);
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(
  //       data['message'].toString(),
  //       style: const TextStyle(fontSize: 26),
  //     ),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_sharp),
                    color: Colors.white,
                    iconSize: 20,
                  ),
                  const Text(
                    "Update Draft",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Title',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(13)),
                      child: TextField(
                        controller: titleController,
                        style: const TextStyle(color: Colors.white),
                        cursorHeight: 20,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 6),
                          //hintText: 'Add a Title',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          //focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12)),
                          filled: true,
                          //fillColor: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          //color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          controller: descriptionController,
                          style: const TextStyle(color: Colors.white),
                          textInputAction: TextInputAction.newline,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintMaxLines: 8,
                            border: InputBorder.none,
                            hintText: 'Write Your Article Here',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.blue, width: 2),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {
                                      // submitDraft().then((value) => Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => ArticlePage(
                                      //             tabname: "submit"))));
                                    },
                                    child: const Text(
                                      "Submit",
                                      style: TextStyle(fontSize: 18),
                                    )),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.blue, width: 2),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {
                                      // deleteDraft().then((value) => Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => const ArticlePage(
                                      //             tabname: "draft"))));
                                    },
                                    child: const Text(
                                      "Delete Draft",
                                      style: TextStyle(fontSize: 18),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.blue, width: 2),
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {
                                  // updateDraft().then((value) => Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             ArticlePage(tabname: "draft"))));
                                  
                                },
                                child: const Text(
                                  "Update Draft",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

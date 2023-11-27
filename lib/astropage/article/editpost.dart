import 'package:astrology_app/astropage/article/articles.dart';
import 'package:flutter/material.dart';

class EditPost extends StatefulWidget {
  const EditPost({super.key});

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
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
                    "Edit Post",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
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
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          //controller: _descriptionController,
                          style: TextStyle(color: Colors.white),
                          textInputAction: TextInputAction.newline,
                          maxLines: 5,
                          decoration: InputDecoration(
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
                        children: [
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const ArticlePage(tabname: 'submit',)));
                                },
                                child: const Text(
                                  "Update Post",
                                  style: TextStyle(fontSize: 18),
                                )),
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ArticlePage(tabname: 'draft',)));
                                },
                                child: const Text(
                                  "Save as Draft",
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

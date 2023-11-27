import 'dart:ui';
import 'package:astrology_app/astropage/article/articles.dart';
import 'package:astrology_app/astropage/article/create_post.dart';
import 'package:astrology_app/astropage/article/editpost.dart';
import 'package:astrology_app/astropage/article/updatedraft.dart';
import 'package:flutter/material.dart';

//---------------------------- Submitted Tab -----------------------------------------------
class SubmittedTab1 extends StatelessWidget {
  const SubmittedTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.5),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: picture.length,
              itemBuilder: (context, index) => ArticleClassList(
                bgimage: picture[index].bgimage,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.11,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreatePost()));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArticleList {
  final String bgimage;
  ArticleList({required this.bgimage});
}

List<ArticleList> picture = [
  ArticleList(bgimage: 'assets/images/cont1.jpg'),
  ArticleList(bgimage: 'assets/images/cont2.jpg'),
  ArticleList(bgimage: 'assets/images/cont3.jpg'),
  ArticleList(bgimage: 'assets/images/cont4.jpg'),
];

class ArticleClassList extends StatelessWidget {
  const ArticleClassList({
    super.key,
    required this.bgimage,
  });
  final String bgimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    bgimage,
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: MediaQuery.of(context).size.width * 0.97,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.001,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.001,
                    bottom: MediaQuery.of(context).size.width * 0.4,
                    child: buildBlur(
                      borderRadius: BorderRadius.circular(0),
                      child: Container(
                        color: Colors.white.withOpacity(0.2),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '  Destiny : The Path',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.4,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.001,
                    bottom: MediaQuery.of(context).size.height * 0.001,
                    child: buildBlur(
                      borderRadius: BorderRadius.circular(1),
                      child: Container(
                        color: Colors.white.withOpacity(0.1),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.pending_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                            const Text(
                              'Pending',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const EditPost())));
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 22,
                                )),
                            const Text(
                              'Edit  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBlur({
    required Widget child,
    double sigmaX = 5,
    double sigmaY = 5,
    required BorderRadius borderRadius,
  }) =>
      ClipRRect(
          borderRadius: borderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: child,
          ));
}

//--------------------------------Class of Published -------------------------------------------------
class PublishedTab extends StatelessWidget {
  const PublishedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: plimage.length,
              itemBuilder: (context, index) => PublishedTabList(
                artImage: plimage[index].artImage,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                onPressed: () {},
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: const Center(
                    child: Text(
                      'PUBLISH ALL',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class PublishedList {
  final String artImage;
  PublishedList({required this.artImage});
}

List<PublishedList> plimage = [
  PublishedList(artImage: 'assets/images/cont2.jpg'),
  PublishedList(artImage: 'assets/images/cont3.jpg'),
];

class PublishedTabList extends StatelessWidget {
  const PublishedTabList({
    super.key,
    required this.artImage,
  });
  final String artImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    artImage,
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: MediaQuery.of(context).size.width * 0.97,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.001,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.001,
                    bottom: MediaQuery.of(context).size.width * 0.4,
                    child: buildBlur(
                      borderRadius: BorderRadius.circular(0),
                      child: Container(
                        color: Colors.white.withOpacity(0.2),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '  Destiny : The Path',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.4,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.001,
                    bottom: MediaQuery.of(context).size.height * 0.001,
                    child: buildBlur(
                      borderRadius: BorderRadius.circular(1),
                      child: Container(
                        color: Colors.white.withOpacity(0.1),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '2 Min read  ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBlur({
    required Widget child,
    double sigmaX = 5,
    double sigmaY = 5,
    required BorderRadius borderRadius,
  }) =>
      ClipRRect(
          borderRadius: borderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: child,
          ));
}

//------------------------------------DRAFT tab list------------------------------
class DraftTab extends StatelessWidget {
  const DraftTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: backgroundimage.length,
              itemBuilder: (context, index) => DraftClassList(
                backgimage: backgroundimage[index].backgimage,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ArticlePage(tabname: "publish")));
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: const Center(
                    child: Text(
                      'PUBLISH ALL',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class DraftList {
  late final String backgimage;
  DraftList({required this.backgimage});
}

List<DraftList> backgroundimage = [
  DraftList(backgimage: 'assets/images/cont4.jpg'),
  DraftList(backgimage: 'assets/images/cont3.jpg'),
];

class DraftClassList extends StatelessWidget {
  const DraftClassList({super.key, required this.backgimage});
  final String backgimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    backgimage,
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: MediaQuery.of(context).size.width * 0.97,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.001,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.001,
                    bottom: MediaQuery.of(context).size.width * 0.4,
                    child: buildBlur(
                      borderRadius: BorderRadius.circular(0),
                      child: Container(
                        color: Colors.white.withOpacity(0.2),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '  Destiny : The Path',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.4,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.001,
                    bottom: MediaQuery.of(context).size.height * 0.001,
                    child: buildBlur(
                      borderRadius: BorderRadius.circular(1),
                      child: Container(
                        color: Colors.white.withOpacity(0.1),
                        child: Row(children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.pending_outlined,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                          const Text(
                            'Pending',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const UpdateDraft())));
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 22,
                              )),
                          const Text(
                            'Edit  ',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBlur({
    required Widget child,
    double sigmaX = 5,
    double sigmaY = 5,
    required BorderRadius borderRadius,
  }) =>
      ClipRRect(
          borderRadius: borderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: child,
          ));
}

//----------------------------------Updated Edited parts--------------------------------------------
//--------------------------NEW POST-------------------------------------------
class NewTab1 extends StatefulWidget {
  const NewTab1({super.key});

  @override
  State<NewTab1> createState() => _NewTab1State();
}

class _NewTab1State extends State<NewTab1> {
  static bool _previewClicked = false;
  static bool _publishClicked = false;
  int _currentScreenIndex = 0;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();
  final TextEditingController newwritearticleController =
      TextEditingController();
  final TextEditingController fromController = TextEditingController();

  void _changeScreen(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Stack(
                children: [
                  Positioned(
                    top: 227,
                    left: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      color: Colors.black.withOpacity(0.3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   'assets/icons/articleicon.jpg',
                          // ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.09,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          const Text(
                            "Add Image",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Title',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 10),
          NewArticleContainer(
            controller: titleController,
          ),
          const SizedBox(height: 10),
          const Text(
            'Category',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 10),
          NewArticleContainer(
            controller: categoryController,
          ),
          const SizedBox(height: 10),
          const Text(
            'Tags',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 10),
          NewArticleContainer(
            controller: tagsController,
          ),
          //SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Suggested Tags: ',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6), fontSize: 13),
              ),
              const SizedBox(
                width: 10,
              ),
              //TagList(),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: TextField(
                controller: newwritearticleController,
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
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue, width: 2),
                        backgroundColor: Colors.white.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      String from = fromController.toString();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => NewPublish())));
                      _changeScreen(0);
                      setState(() {
                        _previewClicked = !_publishClicked;
                      });
                    },
                    child: const Text(
                      "Preview",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.07,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue, width: 2),
                          backgroundColor: Colors.white.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => NewPublish())));
                        _changeScreen(1);
                      },
                      child: const Text(
                        "Publish",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
          ),
          _currentScreenIndex == 0
              ? NewPublish() // Replace with your first screen content widget
              : NewPublish(),
        ],
      ),
    );
  }
}

//---------------------------------Container field--------------------
class NewArticleContainer extends StatefulWidget {
  const NewArticleContainer({
    super.key,
    required this.controller,
    // required this.hint,
  });
  final TextEditingController controller;
  // final TextStyle hint;

  @override
  State<NewArticleContainer> createState() => _NewArticleContainerState();
}

class _NewArticleContainerState extends State<NewArticleContainer> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      cursorHeight: 20,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 7),
          //hintText: 'Add a Title',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          //focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)),
          filled: true,
          fillColor: Colors.white.withOpacity(0.3)),
    );
  }
}

//------------------------New Tab After Hitting publish ---------------------------------
class NewPublish extends StatefulWidget {
  const NewPublish({super.key});

  @override
  State<NewPublish> createState() => _NewPublishState();
}

class _NewPublishState extends State<NewPublish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Image.asset(
                  'assets/images/articlenext.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'When a Libra man breaks up with you, it can be a difficult and confusing time. Libra is an air sign, known for its charm, diplomacy, and love of balance and harmony. However, sometimes even the most balanced and harmonious relationships can come to an end. When a Libra man is going through a break up, it’s important to understand the astrological traits that may be influencing his behavior. By understanding the Libra man’s personality and motivations, you can better navigate the breakup process and move forward with clarity and grace.',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '7 traits of a Libra man after a breakup',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Reflective',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'After a breakup, the reflective trait of a Libra man emerges. He contemplates his actions and analyzes the reasons behind the separation. Transitioning from a state of togetherness to solitude, he examines his emotions with utmost sincerity. With introspection, he navigates through the rollercoaster of feelings. Throughout this process, he questions his role in the relationship and ponders upon the lessons learned. Embracing his independence, he contemplates his future steps and the potential for personal growth',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'This trait enables him to reassess his priorities and redefine his desires. The reflective phase, though challenging, offers a valuable opportunity for self-discovery and emotional healing. Ultimately, the Libra man emerges from this breakup with a newfound understanding of himself and his needs, preparing him for future relationships with greater clarity and balance.',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Also Read: ',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Can Astrology Predict the Exact ',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                      Text(
                        'Timing of marriage',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {},
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const Center(
                      child: Text(
                        'PUBLISH',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

//-------------------------------tag list-----------------------------------------
class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Expanded(
        flex: 1,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) =>
                TagFieldList(tag: tags[index].tag))),
      ),
    );
  }
}

class TagField {
  final String tag;
  TagField({
    required this.tag,
  });
}

List<TagField> tags = [
  TagField(tag: 'Love'),
  TagField(tag: 'Planets'),
  TagField(tag: 'Astrology'),
];

class TagFieldList extends StatelessWidget {
  const TagFieldList({super.key, required this.tag});
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.01,
      width: MediaQuery.of(context).size.height * 0.22,
      decoration: BoxDecoration(color: Colors.amber.shade100),
    );
  }
}
//-----------------------------------------Page 2 of Tab New ---------------------------------------------------------------------

class NewNextTab extends StatefulWidget {
  const NewNextTab({super.key});

  @override
  State<NewNextTab> createState() => _NewNextTabState();
}

class _NewNextTabState extends State<NewNextTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Image.asset(
                  'assets/images/articlenext.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'When a Libra man breaks up with you, it can be a difficult and confusing time. Libra is an air sign, known for its charm, diplomacy, and love of balance and harmony. However, sometimes even the most balanced and harmonious relationships can come to an end. When a Libra man is going through a break up, it’s important to understand the astrological traits that may be influencing his behavior. By understanding the Libra man’s personality and motivations, you can better navigate the breakup process and move forward with clarity and grace.',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '7 traits of a Libra man after a breakup',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Reflective',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'After a breakup, the reflective trait of a Libra man emerges. He contemplates his actions and analyzes the reasons behind the separation. Transitioning from a state of togetherness to solitude, he examines his emotions with utmost sincerity. With introspection, he navigates through the rollercoaster of feelings. Throughout this process, he questions his role in the relationship and ponders upon the lessons learned. Embracing his independence, he contemplates his future steps and the potential for personal growth',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'This trait enables him to reassess his priorities and redefine his desires. The reflective phase, though challenging, offers a valuable opportunity for self-discovery and emotional healing. Ultimately, the Libra man emerges from this breakup with a newfound understanding of himself and his needs, preparing him for future relationships with greater clarity and balance.',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Also Read: ',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Can Astrology Predict the Exact ',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                      Text(
                        'Timing of marriage',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:astrology_app/astropage/article/classofarticle.dart';
import 'package:astrology_app/astropage/article/publishedpage.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key, required this.tabname});
  final String tabname;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage>
    with TickerProviderStateMixin {
  Map<String, int> tabs = {"new": 0,"submit": 1, "draft": 2, "publish": 3};

  late TabController? _controller;

  @override
  void initState() {
    _controller = TabController(
        initialIndex: tabs[widget.tabname]!, length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: tabs[widget.tabname]!,
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
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
                    "Articles",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              TabBar(
                  controller: _controller,
                  labelColor: Colors.white,
                  labelPadding: const EdgeInsets.all(0),
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(fontSize: 14),
                  //isScrollable: true,
                  indicatorWeight: 2,
                  indicatorColor: Colors.white,
                  tabs: const [
                    Tab(
                      text: 'New',
                    ),
                    Tab(
                      text: 'Submitted',
                    ),
                    Tab(
                      text: 'Draft',
                    ),
                    Tab(
                      text: 'Published',
                    )
                  ]),
              Expanded(
                flex: 1,
                child: TabBarView(
                  controller: _controller,
                  children: const [
                    NewTab1(),
                    SubmittedTab1(),
                    DraftTab(),
                    Publishedpage1(),
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

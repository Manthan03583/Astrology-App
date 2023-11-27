import 'dart:ui';
import 'package:astrology_app/astropage/chat/chat.dart';
import 'package:astrology_app/astropage/chat/connectcall.dart';
import 'package:flutter/material.dart';

class ChatTabView extends StatefulWidget {
  const ChatTabView({super.key});

  @override
  State<ChatTabView> createState() => _ChatTabViewState();
}

class _ChatTabViewState extends State<ChatTabView>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: width,
              color: Colors.white.withOpacity(0.1),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    onTap: (index) {
                      ///print(index);
                    },

                    indicator: BoxDecoration(
                        color: Color.fromARGB(255, 108, 108, 108)
                            .withOpacity(0.2),
                        border: Border.all(
                            color: Color.fromARGB(255, 108, 108, 108)
                                .withOpacity(0.2))),
                    //indicatorColor: Colors.amber,
                    // indicator: const UnderlineTabIndicator(
                    //     insets: EdgeInsets.only(left: 20, right: 20),
                    //     borderSide: BorderSide(color: Colors.amber)),
                    indicatorWeight: 2,
                    labelColor: Colors.amber,
                    dividerColor: Colors.amber,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Chat",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Call",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: TabBarView(
                        controller: _tabController,
                        // physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          SizedBox(
                            child: ChatConnect(),
                          ),
                          SizedBox(
                            child: CallConnect(),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// class TabContent extends StatelessWidget {
//   const TabContent({super.key, required this.tabList});
//   final TabList tabList;

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;
//     return Card(
//       child: Center(
//         child: Row(
//           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             tabList.icon,
//             Text(
//               tabList.name,
//               style: textStyle,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

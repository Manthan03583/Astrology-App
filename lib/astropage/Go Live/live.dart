import 'package:astrology_app/astropage/Go%20Live/liveallclass.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return ImageLive(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(child: ContainerLive()),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.37,
                child: Stack(
                  children: [
                    Flexible(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: screen.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => LiveStream(
                          user: screen[index].user,
                          status: screen[index].status,
                        ),
                      ),
                    ),
                    const Positioned(right: 15, bottom: 20, child: SideBar()),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(alignment: Alignment.bottomCenter, child: Section()),
            ],
          ),
        ),
      ),
    );
  }
}

class StreamingLive {
  late String user;
  late String status;
  //late String pplIcon;
  StreamingLive({
    required this.user,
    required this.status,
    //required this.pplIcon
  });
}

List<StreamingLive> screen = [
  StreamingLive(user: 'User', status: 'Joined'),
  StreamingLive(user: 'User', status: 'Joined'),
  StreamingLive(user: 'User', status: 'Joined'),
  StreamingLive(user: 'User', status: 'Joined'),
  StreamingLive(user: 'User', status: 'Joined'),
  StreamingLive(user: 'User', status: 'Joined'),
];

class LiveStream extends StatelessWidget {
  const LiveStream({
    super.key,
    required this.user,
    required this.status,
  });
  final String user, status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -3, horizontal: -4),
      //contentPadding: EdgeInsets.only(left: 5),
      horizontalTitleGap: -125,
      leading: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white), shape: BoxShape.circle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/images/people1.jpeg",
            height: 35,
            width: 35,
            fit: BoxFit.cover,
          ),
        ),
      ),

      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            user,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            status,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

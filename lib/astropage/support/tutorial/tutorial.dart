import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPage extends StatelessWidget {
  final String videoUrl;

  const VideoPlayerPage({Key? key, required this.videoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: YoutubePlayer.convertUrlToId(videoUrl) ?? 'https://www.youtube.com/live/SVB66nWk9dQ?si=k65Gc7NefXXatiPH',
              flags: const YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
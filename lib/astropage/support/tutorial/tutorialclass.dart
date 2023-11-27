import 'package:astrology_app/astropage/support/tutorial/tutorial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  final List<String> youtubeVideoUrls = [
    'https://youtu.be/N0lUBVYl1hI',
    'https://youtu.be/uz4xRnE-UIw',
    'https://youtu.be/uz4xRnE-UIw',
    'https://youtu.be/uz4xRnE-UIw',
  ];

  final List<String> youtubeThumbnailUrls = [
    'https://img.youtube.com/vi/N0lUBVYl1hI/0.jpg',
    'https://img.youtube.com/vi/uz4xRnE-UIw/0.jpg',
    'https://img.youtube.com/vi/uz4xRnE-UIw/0.jpg',
    'https://img.youtube.com/vi/uz4xRnE-UIw/0.jpg',
  ];
}

class MultiVideoPage extends StatelessWidget {
  final VideoController videoController = Get.put(VideoController());

  MultiVideoPage({super.key, required String videoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisExtent: 300),
        itemCount: videoController.youtubeVideoUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(() => VideoPlayerPage(
                  videoUrl: videoController.youtubeVideoUrls[index]));
            },
            child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(alignment: Alignment.center, children: [
                    Image.network(
                      videoController.youtubeThumbnailUrls[index],
                      fit: BoxFit.cover,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black87,
                      radius: 29,
                      child: IconButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 35,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Get.to(() => VideoPlayerPage(
                              videoUrl:
                                  videoController.youtubeVideoUrls[index]));
                        },
                      ),
                    ),
                  ]),
                )),
          );
        },
      ),
    );
  }
}

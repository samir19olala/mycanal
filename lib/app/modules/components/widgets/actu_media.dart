import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycanal_app/app/data/video_model.dart';

class ActuMedia extends StatelessWidget {
  final Video video;
  const ActuMedia({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        width: 300,
        child: Image.asset(
          video.thumbnail,
          fit: BoxFit.cover,
        ));
  }
}

class VideoWidget extends ActuMedia {
  const VideoWidget({super.key, required super.video});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.cardColor,
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.only(right: 10),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(super.video.thumbnail, fit: BoxFit.cover),
              Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    value: super.video.state/super.video.duration,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            super.video.title,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(super.video.desc,maxLines: 1,style:const TextStyle(fontWeight: FontWeight.w300,fontSize:12,color: Colors.grey))
        ],
      ),
    );
  }
}

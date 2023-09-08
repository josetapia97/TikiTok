import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/screens/discover/widgets/shared/video/fullscreen_player.dart';
import 'package:toktik/presentation/screens/discover/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length, //efecto rebote al llegar al limite
      itemBuilder: (contex, index) {
        final videoPost = videos[index];

        return Stack(
          children: [
            //videoplayer y gradiente
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            //Botones
            Positioned(
              bottom:40,
              right: 20,
              child: VideoButtons(video: videoPost)),
          ],
        );
      },
    );
  }
}

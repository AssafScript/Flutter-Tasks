import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  VideoPlayer({super.key, required this.URL});

  final String URL;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer>{
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    _initPlayer();
    super.initState();
  }

  void _initPlayer() {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(widget.URL));
    videoPlayerController.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoInitialize: true,
      autoPlay: true,
      looping: true,
      aspectRatio: 16/9,
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return chewieController!=null?
      Chewie(controller: chewieController!)
        :const Center(
          child: CircularProgressIndicator(),
    );
  }
}

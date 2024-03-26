import 'package:flutter/material.dart';
import 'package:api_sample/bloc/Videos/videos_cubit.dart';
import 'package:api_sample/bloc/Videos/videos_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../video_player.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideosCubit()..getAllVideos(),
      child: BlocConsumer<VideosCubit, VideosState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = VideosCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('VideosPage'),
              backgroundColor: Colors.blue,
            ),
            body: isEmpty(cubit),
          );
        },
      ),
    );
  }
}

Widget isEmpty(VideosCubit cubit) {
  if (cubit.videos.total != 0) {
    return ListView.separated(
      itemBuilder: (context, index) => Card(
        child: VideoPlayer(
          URL: cubit.videos.hits[index].videos.tiny.url,
        ),
      ),
      itemCount: 5,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
  return const Center(
    child: CircularProgressIndicator(
      color: Colors.blue,
    ),
  );
}

import 'package:api_sample/bloc/Videos/videos_state.dart';
import 'package:api_sample/web_services/dio_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:api_sample/api/videos_model.dart';
import 'package:flutter/material.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit() : super(VideosInitial());

  static VideosCubit get(BuildContext context) => BlocProvider.of(context);
  VideosModel videos = VideosModel.makeItEmpty();

  void getAllVideos() async {
    videos = await DioClient.getVideos();
    emit(VideosLoadedSuccessfully());
  }
}

import 'package:api_sample/web_services/dio_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'photos_state.dart';
import 'package:api_sample/api/photos_model.dart';
import 'package:flutter/material.dart';

class PhotosCubit extends Cubit<PhotosState> {
  PhotosCubit() : super(PhotosInitial());

  static PhotosCubit get(BuildContext context) => BlocProvider.of(context);
  PhotosModel photos = PhotosModel.makeItEmpty();

  void getAllPhotos() async {
    photos = await DioClient.getPhotos();
    emit(PhotosLoadedSuccessfully());
  }
}

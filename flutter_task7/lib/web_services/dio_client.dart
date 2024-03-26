import 'package:dio/dio.dart';
import '../api/photos_model.dart';
import '../api/videos_model.dart';

class DioClient {
  static const key = '42928996-f54cf488e4e2427e7c9d244cb';
  static final _dio = Dio()..options.baseUrl = 'https://pixabay.com/api';

  static Future<PhotosModel> getPhotos() async {
    var responsePhotos = await _dio.get('/?key=$key');
    var photosListResponse = responsePhotos.data;
    PhotosModel photos = PhotosModel.fromJson(photosListResponse);
    return photos;
  }

  static Future<VideosModel> getVideos() async {
    var responseVideos = await _dio.get('/videos/?key=$key');
    var videosListResponse = responseVideos.data;
    VideosModel videos = VideosModel.fromJson(videosListResponse);
    List<HitsVideos> hits = [];
    for (var hit in videosListResponse['hits']) {
      hits.add(HitsVideos.fromJson(hit));
    }
    videos.hits = hits;
    return videos;
  }
}

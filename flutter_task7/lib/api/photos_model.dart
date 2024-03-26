class PhotosModel {
  int total, totalHits;
  List<HitsPhotos> hits;

  PhotosModel({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  factory PhotosModel.fromJson(Map<String, dynamic> json) => PhotosModel(
        total: json['total'],
        totalHits: json['totalHits'],
        hits: toHitsList(json['hits']),
      );

  static List<HitsPhotos> toHitsList(List<dynamic> list) {
    List<HitsPhotos> hitsList =
        list.map((e) => HitsPhotos.fromJson(e)).toList();
    return hitsList;
  }

  static PhotosModel makeItEmpty() {
    return PhotosModel(total: 0, totalHits: 0, hits: <HitsPhotos>[]);
  }
}

class HitsPhotos {
  int id;
  String pageURL, type, tags, previewURL;
  int previewWidth, previewHeight;
  String webFormatURL;
  int webFormatWidth, webFormatHeight;
  String largeImageURL;
  int imageWidth, imageHeight, imageSize, views;
  int downloads, collections, likes, comments, userId;
  String user, userImageURL;

  HitsPhotos(
      {required this.id,
      required this.pageURL,
      required this.type,
      required this.tags,
      required this.previewURL,
      required this.previewWidth,
      required this.previewHeight,
      required this.webFormatURL,
      required this.webFormatWidth,
      required this.webFormatHeight,
      required this.largeImageURL,
      required this.imageWidth,
      required this.imageHeight,
      required this.imageSize,
      required this.views,
      required this.downloads,
      required this.collections,
      required this.likes,
      required this.comments,
      required this.userId,
      required this.user,
      required this.userImageURL});

  factory HitsPhotos.fromJson(Map<String, dynamic> json) => HitsPhotos(
        id: json['id'],
        pageURL: json['pageURL'],
        type: json['type'],
        tags: json['tags'],
        previewURL: json['previewURL'],
        previewWidth: json['previewWidth'],
        previewHeight: json['previewHeight'],
        webFormatURL: json['webformatURL'],
        webFormatWidth: json['webformatWidth'],
        webFormatHeight: json['webformatHeight'],
        largeImageURL: json['largeImageURL'],
        imageWidth: json['imageWidth'],
        imageHeight: json['imageHeight'],
        imageSize: json['imageSize'],
        views: json['views'],
        downloads: json['downloads'],
        collections: json['collections'],
        likes: json['likes'],
        comments: json['comments'],
        userId: json['user_id'],
        user: json['user'],
        userImageURL: json['userImageURL'],
      );
}

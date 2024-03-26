class VideosModel {
  int total;
  int totalHits;
  List<HitsVideos> hits;

  VideosModel({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
        total: json['total'],
        totalHits: json['totalHits'],
        hits: toHitsList(json['hits']),
      );

  static List<HitsVideos> toHitsList(List<dynamic> list) {
    List<HitsVideos> hitsList =
        list.map((e) => HitsVideos.fromJson(e)).toList();
    return hitsList;
  }

  static VideosModel makeItEmpty() {
    return VideosModel(total: 0, totalHits: 0, hits: <HitsVideos>[]);
  }
}

class HitsVideos {
  int id;
  String pageURL, type, tags;
  int duration;
  String picture_id;
  Videos videos;
  int views, downloads, likes, comments, user_id;
  String user, userImageURL;

  HitsVideos({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.duration,
    required this.picture_id,
    required this.views,
    required this.downloads,
    required this.likes,
    required this.comments,
    required this.user_id,
    required this.user,
    required this.userImageURL,
    required this.videos,
  });

  factory HitsVideos.fromJson(Map<String, dynamic> json) => HitsVideos(
        id: json['id'],
        pageURL: json['picture_id'],
        type: json['type'],
        tags: json['tags'],
        duration: json['duration'],
        picture_id: json['picture_id'],
        views: json['views'],
        downloads: json['downloads'],
        likes: json['likes'],
        comments: json['comments'],
        user_id: json['user_id'],
        user: json['user'],
        userImageURL: json['userImageURL'],
        videos: Videos.fromJson(
          json['videos'],
        ),
      );
}

class Videos {
  Size large, medium, small, tiny;

  Videos({
    required this.large,
    required this.medium,
    required this.small,
    required this.tiny,
  });

  factory Videos.fromJson(Map<String, dynamic> json) => Videos(
        large: Size.fromJson(json['large']),
        medium: Size.fromJson(json['medium']),
        small: Size.fromJson(json['small']),
        tiny: Size.fromJson(
          json['tiny'],
        ),
      );
}

class Size {
  String url;
  int width, height, size;
  String thumbnail;

  Size({
    required this.url,
    required this.width,
    required this.height,
    required this.size,
    required this.thumbnail,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        url: json['url'],
        width: json['width'],
        height: json['height'],
        size: json['size'],
        thumbnail: json['thumbnail'],
      );
}

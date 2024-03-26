class Albums {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Albums({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Albums.fromJson(Map<String, dynamic> json) => Albums(
        albumId: json['albumId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        url: json['url'] as String?,
        thumbnailUrl: json['thumbnailUrl'] as String?,
      );

  // Map<String, dynamic> toJson() => {
  //       'albumId': albumId,
  //       'id': id,
  //       'title': title,
  //       'url': url,
  //       'thumbnailUrl': thumbnailUrl,
  //     };
}

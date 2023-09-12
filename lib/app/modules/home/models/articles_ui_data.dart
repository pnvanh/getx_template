class ArticlesUiData {
  SourceUiData? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticlesUiData({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
}

class SourceUiData {
  String? id;
  String? name;

  SourceUiData({this.id, this.name});
}

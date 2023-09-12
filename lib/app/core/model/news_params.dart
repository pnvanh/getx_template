class NewsParams {
  String apiKey;
  String? country;
  int? page;
  int? pageSize;

  NewsParams({
    required this.apiKey,
    this.country,
    this.page,
    this.pageSize,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apiKey'] = apiKey;
    data['country'] = country;
    data['page'] = page;
    data['pageSize'] = pageSize;

    return data;
  }
}

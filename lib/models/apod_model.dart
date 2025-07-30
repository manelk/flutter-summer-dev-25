class ApodModel {
  final String title;
  final String url;
  final String explanation;
  final DateTime? date;
  final String? copyright;

  const ApodModel({
    this.title = "",
    required this.url,
    this.explanation = "",
    this.date,
    this.copyright = "",
  });

  factory ApodModel.fromJson(Map<String, dynamic> json) {
    return ApodModel(
      title: json['title'],
      url: json['url'],
      explanation: json['explanation'],
      date: DateTime.tryParse(json['date']),
      copyright: json['copyright'],
    );
  }
}

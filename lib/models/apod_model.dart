class ApodModel {
  final String title;
  final String url;
  final String explanation;
  final DateTime? date;
  final String copyright;

  const ApodModel({
    this.title = "",
    required this.url,
    this.explanation = "",
    this.date,
    this.copyright = "",
  });
}

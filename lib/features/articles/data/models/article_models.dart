class Article{
  String author;
  String title;
  String url;
  String description;
  String urlToImage;
  String publishedAt;
  String content;


  Article({required this.author,
    required this.title,
    required this.url,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
    required this.content});

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(author: json["author"], title: json["title"], url: json["url"], description: json["description"],
        urlToImage: json["urlToImage"], publishedAt: json["publishedAt"], content: json["content"]);

  }
}
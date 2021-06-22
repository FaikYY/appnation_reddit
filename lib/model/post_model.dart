class Posts {
  final String title;
  final String description;
  final String thumbnail;
  final String author;
  final int ups;

  Posts({this.title, this.description, this.thumbnail, this.author, this.ups});

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      title: json['title'],
      description: json['description'],
      thumbnail: json['thumbnail'],
      author: json['author'],
      ups: json['ups'],
    );
  }
}

// String url = "https://www.reddit.com/r/flutterdev/top.json?count=20";

// Future<List<Posts>> fetchPosts() async {
//   final response = await http.get(url);

//   return compute(parsePosts, response.body);
// }

// List<Posts> parsePosts(String responseBody) {
//   final parsed = json
//       .decode(responseBody)['data']['children']
//       .cast<Map<String, dynamic>>();

//   return parsed.map<Posts>((json) => Posts.fromJson(json['data'])).toList();
// }

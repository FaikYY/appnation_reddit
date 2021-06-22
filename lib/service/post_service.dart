import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:jsonapi/model/post_model.dart';

class PostService {
  static String url = "https://www.reddit.com/r/flutterdev/top.json?count=20";

  static Future<List<Posts>> fetchPosts() async {
    final response = await http.get(url);

    return compute(parsePosts, response.body);
  }

  static List<Posts> parsePosts(String responseBody) {
    final parsed = json
        .decode(responseBody)['data']['children']
        .cast<Map<String, dynamic>>();

    return parsed.map<Posts>((json) => Posts.fromJson(json['data'])).toList();
  }
}

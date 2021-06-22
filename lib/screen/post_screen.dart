import 'package:flutter/material.dart';
import 'package:jsonapi/component/post_list.dart';
import 'package:jsonapi/model/post_model.dart';
import 'package:jsonapi/service/post_service.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<Posts>>(
            future: PostService.fetchPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return (snapshot.hasData)
                  ? PostsList(posts: snapshot.data)
                  : Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}

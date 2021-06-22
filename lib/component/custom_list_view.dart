import 'package:flutter/material.dart';
import 'package:jsonapi/component/custom_list_item.dart';
import 'package:jsonapi/model/post_model.dart';

class CustomListView extends StatelessWidget {
  List<Posts> posts;

  CustomListView({this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return CustomListItem(
          posts: posts,
          index: index,
        );
      },
    );
  }
}

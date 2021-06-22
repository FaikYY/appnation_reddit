import 'package:flutter/material.dart';
import 'package:jsonapi/model/post_model.dart';

import 'custom_list_view.dart';

class PostsList extends StatelessWidget {
  final List<Posts> posts;

  PostsList({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(posts: posts);
  }
}

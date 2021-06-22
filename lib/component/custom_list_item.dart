import 'package:flutter/material.dart';
import 'package:jsonapi/model/post_model.dart';

class CustomListItem extends StatelessWidget {
  List<Posts> posts;
  int index;

  CustomListItem({this.index, this.posts});

  @override
  Widget build(BuildContext context) {
    return initCardContent(posts, index);
  }
}

Widget initCardContent(posts, index) {
  var ups = posts[index].ups;
  /////////////////
  var author = posts[index].author;
  /////////////////
  var thumbnail = posts[index].thumbnail != "self"
      ? posts[index].thumbnail
      : "https://img.tamindir.com/2020/12/470608/reddit-gunluk-kullanici-sayisi.jpg";
  /////////////////
  var title = posts[index].title.length > 100
      ? "${posts[index].title.substring(0, 100)}..."
      : posts[index].title;
  /////////////////
  var description = posts[index].description != null
      ? posts[index].description
      : "There is no description";
  /////////////////
  var cardContent = Container(
    height: 300,
    padding: EdgeInsets.all(10.0),
    child: Row(
      children: [
        SizedBox(
          width: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Icon(Icons.arrow_upward),
              SizedBox(height: 5),
              Text(ups.toString()),
              SizedBox(height: 5),
              Icon(Icons.arrow_downward),
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                author,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.blueAccent[700]),
              ),
              SizedBox(height: 20),
              Image.network(
                thumbnail,
                height: 100,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  return Card(margin: EdgeInsets.symmetric(vertical: 20.0), child: cardContent);
}

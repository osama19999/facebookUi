import 'package:facebookui/data/PostModel.dart';
import 'package:facebookui/data/data.dart';
import 'package:facebookui/facebook/appbar.dart';
import 'package:facebookui/facebook/friends.dart';
import 'package:facebookui/facebook/post.dart';
import 'package:facebookui/facebook/storyimage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  List<FacebookUser> d=[];
  List<PostModel> convertDataToPosts() {
    return posts.map((e) {
      return PostModel.fromMap(e);
    }).toList();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbarr(),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: const[
                  Text(
                    "Stories",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See Arichieve  >",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),

           StoryImage(d),

            const Divider(
              indent: 1,
              color: Colors.grey,
            ),
            Column(
                children: convertDataToPosts().map((e) {
                  d.add(e.instagramUser!);
                  return PostFacebook(e,e.instagramUser!);
                }).toList()),
            SizedBox(height: 10,),
            const Divider(
              indent: 1,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: const[
                  Text(
                    "Friends Suggestion",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "View All >",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Findesfacebook()

          ]),
        ));
  }
}


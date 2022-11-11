import 'package:facebookui/comment/commentpost.dart';
import 'package:flutter/material.dart';
class CommentUi extends StatelessWidget {
  const CommentUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Row(
          children: [
            Icon(Icons.arrow_back,color: Colors.grey,size:17 ,),
                SizedBox(width: 10,),
               Text("👍❤😃",style: TextStyle(fontSize: 13),),
                SizedBox(width: 10,),
               Text("1.2K",style: TextStyle(color: Colors.grey,fontSize: 13),)
          ],
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              indent: 1,
              color: Colors.grey,
            ),
            CommentPost(),
            Divider(
              indent: 1,
              color: Colors.grey,
            ),
            CommentPost(),
            Container(margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("View all 10 reply",style: TextStyle(color: Colors.blueAccent),)),
            Container(margin: EdgeInsets.only(left: 40),
                child: CommentPost()),
            Container(margin: EdgeInsets.only(left: 40),child: CommentPost()),



          ],
        ),
      ),
    );
  }
}

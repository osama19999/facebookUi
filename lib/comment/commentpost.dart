import 'package:flutter/material.dart';
class CommentPost extends StatelessWidget {
  const CommentPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Row(children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/profile-pics/1.jpg"),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text(
                  'Dominic Simmons',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),Text(
                  '2 hre',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ])
          ,
        ),
        Container(
          margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          width: 1000,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hello how are you I will see you soon Hello how are you I will see you soon Hello how are you I will see you soon"),
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(208, 205, 205, 1.0),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
              bottom:  Radius.circular(10),
            ),
            boxShadow: [
              // to make elevation
              BoxShadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Like",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Text("Reply",style: TextStyle(fontWeight: FontWeight.bold),),

            ],
          ),
        )
      ],
    );
  }
}

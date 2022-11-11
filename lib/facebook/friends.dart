import 'package:flutter/material.dart';
class Findesfacebook extends StatelessWidget {
  List<String> profilePics = [
    "1.jpg",
    "2.jpg",
    "2.png",
    "3.jpg",
    "4.jpg",
    "7.jpg",
    "9.jpeg",
    "10.jpg",
    "11.png",
    "12.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      child: ListView.builder(itemBuilder: (context,index){
        return  Container(
          margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size:const Size.fromRadius(48),
              child:Image.asset("assets/profile-pics/${profilePics[index]}", fit: BoxFit.cover,),
            ),
          ),
        );
      },
        itemCount: 8,
        scrollDirection: Axis.horizontal,),
    );
  }
}

import 'package:facebookui/data/PostModel.dart';
import 'package:flutter/material.dart';
class StoryImage extends StatelessWidget {
List<FacebookUser> d=[];

StoryImage(this.d);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 85,
      margin: EdgeInsets.only(top: 8, left: 16),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            child: SingleChildScrollView(
              child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 65,
                          width: 65,
                          padding:
                          EdgeInsets.all((index % 2 == 1) ? 2 : 0),
                          child: ClipOval(
                            child: (index == 0)
                                ? Stack(
                              children: <Widget> [
                                CircleAvatar(
                                  radius:72.0,
                                  backgroundImage: AssetImage("assets/profile-pics/4.jpg"),
                                ),

                                Positioned(

                                  child: IconButton(
                                   // color:Color.fromRGBO(121, 120, 120, 1.0) ,
                                    icon: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.black
                                    ),
                                    onPressed: () {},
                                  ),

                                  top: 1,right: 1,left: 1,bottom: 1,)
                              ],
                            )
                                : CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(d[index].image!),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            child: CircleAvatar(
                              radius:30.0,
                              backgroundImage: NetworkImage(d[index].image!),
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(9)),
                                border: Border.all(
                                    color: Colors.white, width: 1)),
                            height: (index != 0) ? 20 : 0,
                            width: 18,
                          ),
                          top: 0,
                          right: 0,
                        )
                      ],
                    ),
                    Container(
                      child: Text(
                        d[index].name!,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),

            ),
          );
        },
        itemCount: d.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

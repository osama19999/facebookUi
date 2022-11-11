import 'package:facebookui/data/PostModel.dart';
import 'package:flutter/material.dart';
class PostFacebook extends StatelessWidget {
  PostModel postModel;
  FacebookUser facebookUser;
  PostFacebook(this.postModel,this.facebookUser);
  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(children: [
               CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(facebookUser.image!),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    facebookUser.name!,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),Text(
                    '2 hre',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_horiz_rounded,color: Colors.grey,)
            ])
            ,
          ),
          Container(
              margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
//"The most beauitfl place in the world! 😍"
              child: Text(postModel.content!,style: TextStyle(fontWeight: FontWeight.bold),)),
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
            child: Row(
              children:const [
                Text("#Travel   ",style: TextStyle(color: Colors.blue),),
                Text("#Ocean  ",style: TextStyle(color: Colors.blue),),
                Text("#SoloTrip",style: TextStyle(color: Colors.blue),),
              ],
            ),
          ),
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            height: 300.0,
            width: 1000,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size:const Size.fromRadius(48),
                child:Image.network(postModel.image!, fit: BoxFit.cover,),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children:const [
                Text("👍😍😂"),
                 SizedBox(
                  width: 5,
                ),
                 Text("1.2K",style: TextStyle(color: Colors.grey),),
                 Spacer(

                ), Text("8 Comments | 66 share",style: TextStyle(color: Colors.grey)),

              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children:const [
                  Icon(Icons.thumb_up_outlined,color:Colors.black54 ,),
                   SizedBox(
                    width: 5,
                  ),
                  Text("Like",style: TextStyle(color: Colors.black54)),
                   SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.mode_comment_outlined,color:Colors.black54 ,),
                   SizedBox(
                    width: 5,
                  ),
                  Text("Comments",style: TextStyle(color: Colors.black54),),
                   SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward,color:Colors.black54 ,),
                   SizedBox(
                    width: 5,
                  ),
                  Text("Share",style: TextStyle(color: Colors.black54),),
                   SizedBox(
                    width: 10,
                  ),
                ],
              ))
        ],
      );
  }
}

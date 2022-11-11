import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class Appbarr extends StatelessWidget with PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        "Facebook",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
            fontFamily: "Roboto"),
      ),
      actions: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              Icons.photo_camera,
              size: 22,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              Iconsax.volume_slash,
              size: 22,
              color: Color.fromRGBO(195, 195, 195, 1),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              Icons.edit,
              size: 22,
              color: Color.fromRGBO(195, 195, 195, 1),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }

  @override
// TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
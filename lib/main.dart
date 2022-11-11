import 'package:facebookui/comment/commentui.dart';
import 'package:flutter/material.dart';

import 'facebook/facebookUi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: '/MyHomePage' ,
      routes: {
        '/MyHomePage'  :(context)=>MyHomePage(),
        '/CommentUi' :(context)=>CommentUi(),
      },

    );
  }
}

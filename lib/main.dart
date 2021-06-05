import "package:flutter/material.dart";
import 'package:jawan_pakistan_assignment3/screens/history_screen.dart';
import 'package:jawan_pakistan_assignment3/screens/item_screen.dart';
import 'package:jawan_pakistan_assignment3/screens/sign_in_screen.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home: HistoryScreen(), //SignScreen() //ItemScreen(), //  //
    );
  }
}



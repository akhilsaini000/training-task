import 'package:flutter/material.dart';
import 'package:list_view_tut/screens/description.dart';
//import 'package:list_view_tut/model/speaker.dart';
//import 'package:list_view_tut/screens/listviewdemo.dart';
//import 'package:list_view_tut/screens/lvdemo2.dart';
import 'package:list_view_tut/screens/lvdemo3.dart';

void main(List<String> args) {
  runApp(const NavigationDemo());
}

class NavigationDemo extends StatelessWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LVDemo3(),
        SpeakerDetails.routename: (context) => const SpeakerDetails(),
      },
    );
  }
}

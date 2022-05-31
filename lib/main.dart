import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'AppScreens/HomePage_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}

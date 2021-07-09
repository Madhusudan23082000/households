import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mygate_clone/intro_slider.dart';
import 'package:mygate_clone/register1.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
// The following two lines set the android status bar to be transparent immersive. Written after component rendering, in order to assign a value after rendering, override the status bar, the MaterialApp component will override this value before rendering.
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroSliderPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



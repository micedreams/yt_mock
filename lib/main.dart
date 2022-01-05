import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yt_mock/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'youtube mock',
      theme: ThemeData(brightness: Brightness.dark),
      home: const MyHomePage(title: 'youtube mock'),
    );
  }
}


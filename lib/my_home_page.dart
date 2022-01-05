import 'package:flutter/material.dart';
import 'package:yt_mock/headers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool menu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Header(menuOpenClose: menuToggle),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                 menu? const Text("sideBar"):SizedBox.shrink(),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  menuToggle() {
    setState(() {
      menu = !menu;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:yt_mock/constants.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
    required this.menuOpenClose,
  }) : super(key: key);

  final menuOpenClose;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool searchField = false;

  @override
  Widget build(BuildContext context) {
    return searchField ? Text("searchBarHeader()") : mainHeader();
  }

  Expanded mainHeader() {
    return Expanded(
      flex: 0,
      child: Container(
        width: double.infinity,
        height: 65,
        color: secondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: myPadding * 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: widget.menuOpenClose,
                icon: buildIcon(Icons.menu),
              ),
              const WidthSpacer(myWidth: myPadding),
              const SizedBox(
                child: Image(
                  image: AssetImage("assets/header_logo.png"),
                ),
              ),
              const Spacer(flex: 2),
              const WidthSpacer(myWidth: myPadding * 3),
              InkWell(
                  onTap: () {
                    setState(() {
                      searchField = true;
                    });
                  },
                  child: buildIcon(Icons.search)),
              const WidthSpacer(myWidth: 25.00),
              buildIcon(Icons.mic),
              const WidthSpacer(myWidth: 25.00),
              buildIcon(Icons.video_call),
              const WidthSpacer(myWidth: 25.00),
              buildIcon(Icons.apps),
              const WidthSpacer(myWidth: 25.00),
              buildIcon(Icons.notifications),
              const WidthSpacer(myWidth: 25.00),
              const CircleAvatar(
                radius: 16,
                child: Text("A", style: TextStyle(fontSize: 20.00)),
              )
            ],
          ),
        ),
      ),
    );
  }



  Icon buildIcon(icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: iconSize,
    );
  }
}

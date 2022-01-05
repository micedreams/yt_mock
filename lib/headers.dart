import 'package:flutter/material.dart';
import 'package:yt_mock/constants.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
    required this.menuToggle,
  }) : super(key: key);

  final menuToggle;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool searchField = false;
  late TextEditingController textController;
  late FocusNode focusNode;
  int inputLength = 90;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    focusNode = FocusNode();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return searchField ? searchBarHeader() : mainHeader();
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
                onPressed: widget.menuToggle,
                icon: const MyIcon(icon: Icons.menu),
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
                  child: const MyIcon(icon: Icons.search)),
              const WidthSpacer(myWidth: 25.00),
              const MyIcon(icon: Icons.mic),
              const WidthSpacer(myWidth: 25.00),
              const MyIcon(icon: Icons.video_call),
              const WidthSpacer(myWidth: 25.00),
              const MyIcon(icon: Icons.apps),
              const WidthSpacer(myWidth: 25.00),
              const MyIcon(icon: Icons.notifications),
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

  Expanded searchBarHeader() {
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
                onPressed: () {
                  setState(() {
                    searchField = false;
                  });
                },
                icon: const MyIcon(icon: Icons.arrow_back),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 8),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    focusNode: focusNode,
                    controller: textController,
                    autocorrect: true,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      suffixIcon: textController.text.isEmpty
                          ? const SizedBox.shrink()
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  textController.text = "";
                                });
                              },
                              child: const MyIcon(icon: Icons.close)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      hintText: "Search.",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      counterText: "",
                      fillColor: Colors.black,
                    ),
                  ),
                ),
              ),
              DecoratedBox(
                  decoration: BoxDecoration(color: accentColor),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        top: 12.0, bottom: 12, left: 26, right: 26),
                    child: MyIcon(icon: Icons.search),
                  )),
              const WidthSpacer(myWidth: 25.00),
              const MyIcon(icon: Icons.mic),
            ],
          ),
        ),
      ),
    );
  }
}

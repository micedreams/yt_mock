import 'package:flutter/material.dart';
import 'package:yt_mock/constants.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool showmore1 = false;
  bool showmore2 = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: secondaryColor,
        child: buildSideBar(),
      ),
    );
  }

  Widget buildSideBar() {
    return ListView(
      controller: ScrollController(),
      physics: const BouncingScrollPhysics(),
      children: [
        const BuildMySideBarListTile(title: "Home", icons: Icons.home),
        const BuildMySideBarListTile(title: "Explore", icons: Icons.explore),
        const BuildMySideBarListTile(
            title: "Subscriptions", icons: Icons.subscriptions),
        const BuildDivider(myThickness: 1),
        const BuildMySideBarListTile(
            title: "Library", icons: Icons.video_library_outlined),
        const BuildMySideBarListTile(title: "History", icons: Icons.history),
        showmore1
            ? const SizedBox.shrink()
            : const BuildMySideBarListTile(
                title: "Your videos", icons: Icons.videocam),
        showmore1
            ? const SizedBox.shrink()
            : const BuildMySideBarListTile(
                title: "Your Movies", icons: Icons.theaters),
        showmore1
            ? const SizedBox.shrink()
            : const BuildMySideBarListTile(
                title: "Watch later", icons: Icons.timer),
        showmore1
            ? const SizedBox.shrink()
            : const BuildMySideBarListTile(
                title: "Liked videos", icons: Icons.thumb_up_alt),
        InkWell(
          onTap: () {
            setState(() {
              showmore1 = !showmore1;
            });
          },
          child: showmore1
              ? const BuildMySideBarListTile(
                  title: "Show more", icons: Icons.keyboard_arrow_down)
              : const BuildMySideBarListTile(
                  title: "Show less", icons: Icons.keyboard_arrow_up),
        ),
        const BuildDivider(myThickness: 1),
        const ListTile(
          title: Text(
            "SUBSCRIPTIONS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.55,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              showmore2 = !showmore2;
            });
          },
          child: showmore2
              ? const BuildMySideBarListTile(
                  title: "Show more", icons: Icons.keyboard_arrow_down)
              : const BuildMySideBarListTile(
                  title: "Show less", icons: Icons.keyboard_arrow_up),
        ),
        const BuildDivider(myThickness: 1),
        const ListTile(
          title: Text(
            "MORE FROM YOUTUBE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.55,
            ),
          ),
        ),
        const BuildMySideBarListTile(
            title: "YouTube Premium", icons: Icons.slideshow),
        const BuildMySideBarListTile(title: "Movies", icons: Icons.theaters),
        const BuildMySideBarListTile(title: "Gaming", icons: Icons.sports_esports),
        const BuildMySideBarListTile(title: "Live", icons: Icons.stream),
        const BuildMySideBarListTile(
            title: "Fashion & Beauty", icons: Icons.checkroom),
        const BuildMySideBarListTile(title: "Learning", icons: Icons.lightbulb),
        const BuildMySideBarListTile(title: "Sports", icons: Icons.emoji_events),
        const BuildDivider(myThickness: 1),
        const BuildMySideBarListTile(title: "Settings", icons: Icons.settings),
        const BuildMySideBarListTile(
            title: "Report history", icons: Icons.flag_outlined),
        const BuildMySideBarListTile(title: "Help", icons: Icons.help_outline),
        const BuildMySideBarListTile(title: "Send feedback", icons: Icons.feedback_outlined),
        const BuildDivider(myThickness: 1),
      ],
    );
  }
}

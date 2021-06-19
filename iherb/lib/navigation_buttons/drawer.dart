import 'package:flutter/material.dart';
import 'package:medicine/constants/Theme.dart';

import 'drawer-tile.dart';

class ArgonDrawer extends StatelessWidget {
  final String currentPage;

  ArgonDrawer({this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: ArgonColors.white,
      child: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.85,
            child: SafeArea(
              bottom: false,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Image.asset("assets/img/argon-logo.png"),
                ),
              ),
            )),
        Expanded(
          flex: 2,
          child: ListView(
            padding: EdgeInsets.only(top: 24, left: 16, right: 16),
            children: [
              DrawerTile(
                  icon: Icons.home,
                  onTap: () {
                    if (currentPage != "main_home")
                      Navigator.pushNamed(context, '/main_home');
                  },
                  iconColor: ArgonColors.primary,
                  title: "Home",
                  isSelected: currentPage == "home" ? true : false),
              DrawerTile(
                  icon: Icons.pie_chart,
                  onTap: () {
                    if (currentPage != "profile")
                      Navigator.pushNamed(context, '/profile');
                  },
                  iconColor: ArgonColors.warning,
                  title: "Profile",
                  isSelected: currentPage == "profile" ? true : false),
              DrawerTile(
                  icon: Icons.apps,
                  onTap: () {
                    if (currentPage != "articles")
                      Navigator.pushNamed(context, '/articles');
                  },
                  iconColor: ArgonColors.primary,
                  title: "Articles",
                  isSelected: currentPage == "articles" ? true : false),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              padding: EdgeInsets.only(left: 8, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(height: 4, thickness: 0, color: ArgonColors.muted),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
                    child: Text("ABOUT",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontSize: 15,
                        )),
                  ),
                  DrawerTile(
                      icon: Icons.airplanemode_active,
                      iconColor: ArgonColors.muted,
                      title: "ABOUT APP",
                      isSelected:
                          currentPage == "Getting started" ? true : false),
                ],
              )),
        ),
      ]),
    ));
  }
}

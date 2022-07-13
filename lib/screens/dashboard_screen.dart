import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_parent_app/pages/profile_page.dart';
import 'package:school_parent_app/pages/home_work_page.dart';
import 'package:school_parent_app/pages/home_page.dart';
import 'package:school_parent_app/pages/image_page.dart';
import 'package:school_parent_app/pages/support_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 2;

  final screens = [
    const ProfilePage(),
    HomeWorkPage(),
    const HomePage(),
    const ImagePage(),
    const SupportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final items = <Widget>[
      Icon(
        Icons.person,
        size: width >= 600 ? 40 : 30,
      ),
      Icon(
        CupertinoIcons.book_fill,
        size: width >= 600 ? 40 : 30,
      ),
      Icon(
        Icons.home,
        size: width >= 600 ? 40 : 30,
      ),
      Icon(
        Icons.image,
        size: width >= 600 ? 40 : 30,
      ),
      Icon(
        Icons.info_rounded,
        size: width >= 600 ? 40 : 30,
      ),
    ];

    return Container(
      color: Colors.pinkAccent,
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: screens[index],
          // backgroundColor: Colors.white,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              // buttonBackgroundColor: Colors.pinkAccent,
              color: const Color.fromARGB(255, 40, 85, 174),
              items: items,
              index: 2,
              height: width >= 600 ? 75 : 60,
              animationDuration: const Duration(milliseconds: 300),
              animationCurve: Curves.easeInOut,
              onTap: (index) => setState(() => this.index = index),
            ),
          ),
        ),
      ),
    );
  }
}

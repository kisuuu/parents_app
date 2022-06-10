import 'package:flutter/material.dart';
import 'package:school_parent_app/forParents/about_school.dart';
import 'package:school_parent_app/forParents/ask_douts.dart';
import 'package:school_parent_app/forParents/attendence.dart';
import 'package:school_parent_app/forParents/event.dart';
import 'package:school_parent_app/forParents/leave_application.dart';
import 'package:school_parent_app/forParents/notice_board.dart';
import 'package:school_parent_app/forParents/school_fees.dart';
import 'package:school_parent_app/forParents/school_gallery.dart';
import 'package:school_parent_app/screens/dashboard_screen.dart';

class ViewMoreForparents extends StatelessWidget {
  const ViewMoreForparents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "For Parents",
                style: TextStyle(
                  fontSize: 16,
                  // color: Color.fromARGB(255, 52, 95, 180),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/notice_board_blue.png',
                text: "Notice Board",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NoticeBoard(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/askdoubt_blue.png',
                text: "Ask Doubt",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AskDoudts(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/fees_blue.png',
                text: "School Fees",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SchoolFees(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/leave_blue.png',
                text: "Leave Application",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LeaveApplication(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/conference_blue.png',
                text: "Event & Program",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Events(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/attendence_blue.png',
                text: "Attendence",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Attendence(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/school_blue.png',
                text: "About School",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutSchool(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class listviewforstudents extends StatelessWidget {
  const listviewforstudents({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 70,
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: Border(
          bottom: BorderSide(
            // width: 1.0,
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            child: ListTile(
              leading: Container(
                width: 30,
                height: 30,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

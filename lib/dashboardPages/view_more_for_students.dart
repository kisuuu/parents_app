import 'package:flutter/material.dart';
import 'package:school_parent_app/forStudentsDashboard/assignment.dart';
import 'package:school_parent_app/forStudentsDashboard/play_quiz.dart';
import 'package:school_parent_app/forStudentsDashboard/report_card.dart';
import 'package:school_parent_app/forStudentsDashboard/timetable.dart';
import 'package:school_parent_app/screens/dashboard_screen.dart';

class ViewMoreForStudents extends StatelessWidget {
  const ViewMoreForStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "For Students",
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
                image: 'assets/images/Play_Quiz_blue.png',
                text: "Play Quiz",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PlayQuiz(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/Assignment_blue.png',
                text: "Assignment",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Assignment(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/calendar_blue.png',
                text: "Time Table",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TimeTable(),
                  ),
                );
              },
            ),
            InkWell(
              child: listviewforstudents(
                image: 'assets/images/report_card_blue.png',
                text: "Report Card",
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ReportCard(),
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
                style: const TextStyle(fontSize: 15),
              ),
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) => const Dashboard(),
              //     ),
              //   );
              // },
            ),
          ),
        ),
      ),
    );
  }
}

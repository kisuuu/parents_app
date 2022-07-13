import 'package:flutter/material.dart';
import 'package:school_parent_app/constants/constant.dart';
import 'package:school_parent_app/dashboardPages/view_more_for_parents.dart';
import 'package:school_parent_app/dashboardPages/view_more_for_students.dart';
import 'package:school_parent_app/forParents/about_school.dart';
import 'package:school_parent_app/forParents/ask_douts.dart';
import 'package:school_parent_app/forParents/attendence.dart';
import 'package:school_parent_app/forParents/event.dart';
import 'package:school_parent_app/forParents/leave_application.dart';
import 'package:school_parent_app/forParents/notice_board.dart';
import 'package:school_parent_app/forParents/school_fees.dart';
import 'package:school_parent_app/forStudentsDashboard/assignment.dart';
import 'package:school_parent_app/forStudentsDashboard/play_quiz.dart';
import 'package:school_parent_app/forStudentsDashboard/timetable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final studentAddSection = const Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 4,
    ),
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/images/pluswhite.png'),
      radius: 15.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0), // here the desired height
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 114, 146, 207),
                  Color.fromARGB(255, 40, 85, 174)
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 114, 146, 207),
                    Color.fromARGB(255, 40, 85, 174)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/images/profile_image.png',
                                      ),
                                      radius: 15.0,
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  Container(
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/profile_image.png'),
                                        radius: 15.0,
                                        backgroundColor: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    child: InkWell(
                                      child: const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/pluswhite.png'),
                                        radius: 15.0,
                                        backgroundColor: Colors.transparent,
                                      ),
                                      onTap: () {
                                        openDialog();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hi Prasad",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width >= 600
                                    ? const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 18)
                                    : 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Mobisoftseo English Primary School",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width >= 600
                                    ? const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 11)
                                    : 12,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Class XI-B  |  Roll no: 03",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width >= 600
                                    ? const AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 11)
                                    : 12,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: width >= 600
                                      ? const AdaptiveTextSize()
                                          .getadaptiveTextSize(context, 4)
                                      : 5,
                                ),
                                child: Text(
                                  "2020-2021",
                                  style: TextStyle(
                                    fontSize: width >= 600
                                        ? const AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 9)
                                        : 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_image.png'),
                              radius: 60.0,
                              backgroundColor: Colors.transparent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 232, 226, 226),
                        width: 1, //
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text("For Students"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const PlayQuiz(),
                                    ),
                                  );
                                },
                                child: forParents(
                                  title: "Play Quiz",
                                  icon: "assets/images/Play_Quiz_blue.png",
                                  width: width,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Assignment(),
                                    ),
                                  );
                                },
                                child: forParents(
                                  title: "Assignment",
                                  icon: "assets/images/Assignment_blue.png",
                                  width: width,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const TimeTable(),
                                    ),
                                  );
                                },
                                child: forParents(
                                  title: "Time Table",
                                  icon: "assets/images/calendar_blue.png",
                                  width: width,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ViewMoreForStudents(),
                                    ),
                                  );
                                },
                                child: forParents(
                                  title: "View More",
                                  icon: "assets/images/plus1.png",
                                  width: width,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 232, 226, 226),
                        width: 1, //
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text("For Parents"),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const NoticeBoard(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                      icon:
                                          'assets/images/notice_board_blue.png',
                                      title: 'Notice Board',
                                      width: width,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AskDoudts(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                      icon: 'assets/images/askdoubt_blue.png',
                                      title: 'Ask Doubt',
                                      width: width,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SchoolFees(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                      icon: 'assets/images/fees_blue.png',
                                      title: 'School Fees',
                                      width: width,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LeaveApplication(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                        icon: 'assets/images/leave_blue.png',
                                        title: 'Leave Application',
                                        width: width),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const Events(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                        icon:
                                            'assets/images/conference_blue.png',
                                        title: 'Event & Program',
                                        width: width),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Attendence(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                        icon:
                                            'assets/images/attendence_blue.png',
                                        title: 'Attendence',
                                        width: width),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutSchool(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                        icon: 'assets/images/school_blue.png',
                                        title: 'About School',
                                        width: width),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ViewMoreForparents(),
                                        ),
                                      );
                                    },
                                    child: forParents(
                                        icon: 'assets/images/plus1.png',
                                        title: 'View More',
                                        width: width),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 232, 226, 226),
                        //
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: const Color.fromARGB(255, 52, 95, 180),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/Ad_banner.png',
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          insetPadding: const EdgeInsets.all(10),
          // insetPadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: Stack(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.43,
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('GR.No'),
                      const TextField(
                        decoration: InputDecoration(hintText: '1245878888'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('DOB'),
                      const TextField(
                        decoration: InputDecoration(hintText: 'DD - MM - YYYY'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('School Code'),
                      const TextField(
                        decoration: InputDecoration(hintText: 'Mobi-1245785'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: SizedBox(
                          // height: 50,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(
                                255,
                                52,
                                95,
                                180,
                              ),
                            ),
                            child: const Text("Add"),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: submit,
                          child: const Text('CANCEL'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  void submit() {
    Navigator.of(context).pop();
  }

  Widget _forStudents({
    required String tittle,
    required String image,
  }) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(right: 4, left: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 35,
            height: 35,
            // color: Colors.amber,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              tittle,
              style: const TextStyle(
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class studentinfo extends StatelessWidget {
  const studentinfo({
    Key? key,
    required this.leftSection,
    required this.rightSection,
  }) : super(key: key);

  final Container leftSection;
  final Container rightSection;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(255, 114, 146, 207),
            Color.fromARGB(255, 40, 85, 174)
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                leftSection,
                rightSection,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class forParents extends StatelessWidget {
  const forParents({
    Key? key,
    required this.icon,
    required this.title,
    required this.width,
  }) : super(key: key);

  final double width;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: width >= 600 ? width * 0.16 : 70,
      width: width >= 600 ? width * 0.16 : 70,
      margin: const EdgeInsets.only(right: 4, left: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: width >= 600 ? width * 0.07 : 35,
            height: width >= 600 ? width * 0.07 : 35,
            // height: 35,

            decoration: BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(icon),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: width >= 600
                    ? const AdaptiveTextSize().getadaptiveTextSize(context, 10)
                    : 10,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

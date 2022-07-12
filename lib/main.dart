import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_parent_app/constants/constant.dart';
import 'package:school_parent_app/dashboardPages/view_more_for_students.dart';
import 'package:school_parent_app/forParents/ask_douts.dart';
import 'package:school_parent_app/forParents/event.dart';
import 'package:school_parent_app/forParents/leave_application.dart';
import 'package:school_parent_app/forStudentsDashboard/timetable.dart';
import 'package:school_parent_app/intro_screens.dart/onborading_screen.dart';
import 'package:school_parent_app/pages/home_page.dart';
import 'package:school_parent_app/pages/home_work_page.dart';
import 'package:school_parent_app/screens/dashboard_screen.dart';
import 'package:school_parent_app/screens/login_screen.dart';
import 'package:school_parent_app/screens/splash_screen.dart';
import 'package:school_parent_app/testing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

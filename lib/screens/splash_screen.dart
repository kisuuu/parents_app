import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:school_parent_app/intro_screens.dart/onborading_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          // gradient: LinearGradient(
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          //   colors: [
          //     Color.fromARGB(255, 114, 146, 207),
          //     Color.fromARGB(255, 40, 85, 174)
          //   ],
          // ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      // color: Colors.red.shade100,
                      // height: MediaQuery.of(context).size.height * 0.58,

                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Column(
                            //   children: [
                            //     // Container(
                            //     //     margin: EdgeInsets.all(20.0),
                            //     //     child: Image.asset(
                            //     //       'assets/images/Schoolup_logo.jpg',
                            //     //       width: 150,
                            //     //       height: 150,
                            //     //     )
                            //     //     // RichText(
                            //     //     //   text: TextSpan(
                            //     //     //     children: [
                            //     //     //       TextSpan(
                            //     //     //         text: "DiGital\n",
                            //     //     //         style: TextStyle(
                            //     //     //           fontSize: 45,
                            //     //     //           fontWeight: FontWeight.bold,
                            //     //     //           fontStyle: FontStyle.italic,
                            //     //     //           color: Colors.white,
                            //     //     //           // fontFamily: 'Poppins',
                            //     //     //         ),
                            //     //     //       ),
                            //     //     //       TextSpan(
                            //     //     //         text: "Parent App",
                            //     //     //         style: TextStyle(
                            //     //     //           fontSize: 25,
                            //     //     //           fontWeight: FontWeight.bold,
                            //     //     //           color: Colors.white,
                            //     //     //           // fontFamily: 'Poppins',
                            //     //     //         ),
                            //     //     //       ),
                            //     //     //     ],
                            //     //     //   ),
                            //     //     // ),
                            //     //     ),
                            //   ],
                            // ),
                            // Text(
                            //   "DiGital",
                            //   style: TextStyle(
                            //       fontSize: 45,
                            //       fontWeight: FontWeight.bold,
                            //       fontStyle: FontStyle.italic,
                            //       color: Colors.white,
                            //       fontFamily: 'Poppins'),
                            // ),
                            // Text(
                            //   "Parent App",
                            //   style: TextStyle(
                            //       fontSize: 25,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white,
                            //       fontFamily: 'Poppins'),
                            // ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.44,
                              child: AnimatedSplashScreen(
                                splash: Image.asset(
                                    'assets/images/Schoolup_logo.png'),
                                nextScreen: OnBoardingScreen(),
                                splashTransition:
                                    SplashTransition.slideTransition,
                                splashIconSize: 270,
                                backgroundColor: Colors.transparent,
                                duration: 3000,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Designed by Mobisoftseo Technologies",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          // Text(
                          //   "",
                          //   style: TextStyle(
                          //       color: Colors.black,
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 12),
                          // )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

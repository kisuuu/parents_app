import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:school_parent_app/constants/constant.dart';
import 'package:school_parent_app/screens/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  String grNumberController = '';
  String mobileNumberController = '';
  String schoolCodeController = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(0), // here the desired height
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 33,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Schoolup_logo.png',
                          width: 200,
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                ],
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: Form(
                      key: formKey,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Hello Parents",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sign in to continue",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(225, 119, 119, 119),
                                        height: 1),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                  labelText: 'Username',
                                ),
                                validator: (value) {
                                  if (value != null && value.length < 1) {
                                    return 'Enter valid username name.';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                obscureText: hidePassword,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    size: 25,
                                  ),
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      // hidePassword = !hidePassword;
                                      setState(() {
                                        hidePassword = !hidePassword;
                                      });
                                    },
                                    color: Colors.black,
                                    icon: Icon(
                                      hidePassword
                                          ? Icons.visibility_off_rounded
                                          : Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value != null && value.length < 1) {
                                    return 'Incorrect password.';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              InkWell(
                                onTap: () {
                                  final isValidForm =
                                      formKey.currentState!.validate();
                                  if (isValidForm) {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) => Dashboard()),
                                        (route) => false);
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color.fromARGB(255, 114, 146, 207),
                                        Color.fromARGB(255, 40, 85, 174)
                                      ],
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.clamp,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Spacer(),
                                      Text(
                                        'LOGIN',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        size: 30.0,
                                        color: Colors.white,
                                      ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

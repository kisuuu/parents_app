import 'package:flutter/material.dart';
import 'package:school_parent_app/pages/home_page.dart';

class AskDoubthPage extends StatelessWidget {
  AskDoubthPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Teacher’s Name",
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter correct teacher name.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Subject",
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter correct subject.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Ask Your Doubt",
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        minLines: 1,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          final isValidForm = formKey.currentState!.validate();
                          if (isValidForm) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                                (route) => false);
                          }
                        },
                        child: Container(
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
                              tileMode: TileMode.clamp,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Spacer(),
                              Text(
                                'Send',
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
                                Icons.arrow_forward_rounded,
                                size: 25.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

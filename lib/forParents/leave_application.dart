import 'package:flutter/material.dart';
import 'package:school_parent_app/screens/dashboard_screen.dart';

class LeaveApplication extends StatefulWidget {
  const LeaveApplication({Key? key}) : super(key: key);

  @override
  State<LeaveApplication> createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leave Application",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: "Class",
                  //     labelStyle: TextStyle(
                  //       fontSize: 15,
                  //     ),
                  //   ),
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return "Enter correct class.";
                  //     } else {
                  //       return null;
                  //     }
                  //   },
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: "Division",
                  //     labelStyle: TextStyle(
                  //       fontSize: 15,
                  //     ),
                  //   ),
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return "Enter correct division.";
                  //     } else {
                  //       return null;
                  //     }
                  //   },
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Class Teacher Name",
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter correct class teacher name.";
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
                      labelText: "Application Title",
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Description",
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
                                builder: (context) => Dashboard()),
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
                          Text(
                            'Send',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
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
    );
  }
}

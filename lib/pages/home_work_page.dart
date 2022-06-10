import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:school_parent_app/screens/dashboard_screen.dart';

class HomeWorkPage extends StatefulWidget {
  HomeWorkPage({Key? key}) : super(key: key);

  @override
  State<HomeWorkPage> createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Home Work",
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
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Class",
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter correct class.";
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
                      labelText: "Division",
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter correct division.";
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
                      labelText: "Subject",
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter correct Subject.";
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
                      labelText: "Upload Homework",
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
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 400,
                    ),
                    padding: EdgeInsets.all(
                      32,
                    ),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: Text("Pick File"),
                      onPressed: () async {
                        final result = await FilePicker.platform
                            .pickFiles(allowMultiple: true);

                        if (result == null) {
                          return;
                        }
                      },
                    ),
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

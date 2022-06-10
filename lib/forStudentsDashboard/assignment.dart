import 'package:flutter/material.dart';
import 'package:school_parent_app/constants/constant.dart';
import 'package:school_parent_app/screens/submit_assignment.dart';
import 'package:school_parent_app/widgets/model.dart';

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  final controller = TextEditingController();
  List<Student> students = allStudent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment",
          style: const TextStyle(
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
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          children: [
            // TextField(
            //   // onChanged: searchStudent,
            //   controller: controller,
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(
            //     color: Colors.black,
            //   ),
            //   decoration: InputDecoration(
            //     filled: true,
            //     fillColor: const Color.fromARGB(255, 244, 246, 248),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide: BorderSide.none,
            //     ),
            //     hintText: "Search Student",
            //     hintStyle: const TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Color.fromARGB(255, 193, 186, 191),
            //     ),
            //     prefixIcon: const Icon(
            //       Icons.search,
            //       size: 33,
            //     ),
            //     prefixIconColor: Colors.black,
            //   ),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SubmitAssignment(
                            studentlist: student,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            // width: 1.5,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.assignment,
                                color: Color.fromARGB(255, 35, 83, 143),
                                size: 40,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${student.teacherName} Added an assignment',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      // color: subtitleColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    'Due Date : ${student.dueDate}\nSubject : ${student.subjectName}',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: subtitleColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "${student.postingDate}",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: subtitleColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void searchStudent(String query) {
  //   final suggestions = allStudent.where((student) {
  //     final studentName = student.studentName!.toLowerCase();
  //     final input = query.toLowerCase();
  //     return studentName.contains(input);
  //   }).toList();
  //   setState(() => students = suggestions);
  // }
}

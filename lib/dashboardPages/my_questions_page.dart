import 'package:flutter/material.dart';
import 'package:school_parent_app/components/assignment_model.dart';

class MyQuestionsPage extends StatefulWidget {
  const MyQuestionsPage({Key? key}) : super(key: key);

  @override
  State<MyQuestionsPage> createState() => _MyQuestionsPageState();
}

class _MyQuestionsPageState extends State<MyQuestionsPage> {
  final controller = TextEditingController();
  List<Assignment> assignments = allAssignments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey)),
              ),
              onChanged: searchAssignment,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: assignments.length,
                itemBuilder: (context, index) {
                  final assignment = assignments[index];
                  return ListTile(
                    title: Text(
                      assignment.announcement,
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      assignment.stage,
                    ),
                    onTap: () {
                      print("Clicked");
                    },
                  );
                }),
          )
        ],
      ),
    );
  }

  void searchAssignment(String query) {
    final suggestions = allAssignments.where((assignment) {
      final assignmentTitle = assignment.announcement.toLowerCase();
      final input = query.toLowerCase();

      return assignmentTitle.contains(input);
    }).toList();
    setState(() => assignments = suggestions);
  }
}

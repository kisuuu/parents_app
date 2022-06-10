import 'package:flutter/material.dart';
import 'package:school_parent_app/dashboardPages/ask_douth_page.dart';
import 'package:school_parent_app/dashboardPages/my_questions_page.dart';

class AskDoudts extends StatelessWidget {
  const AskDoudts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              Tab(
                text: 'Ask Doubts',
              ),
              Tab(text: 'My Questions'),
            ],
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
          ),
          title: Text(
            "Ask Doudts",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          // backgroundColor: Colors.transparent,
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
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: TabBarView(
          children: [
            AskDoubthPage(),
            MyQuestionsPage(),
          ],
        ),
      ),
    );
  }
}

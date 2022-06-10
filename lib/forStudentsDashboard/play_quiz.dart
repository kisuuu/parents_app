import 'package:flutter/material.dart';

class PlayQuiz extends StatelessWidget {
  const PlayQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Play Quiz",
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
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Spacer(),
              Image.asset("assets/images/working.gif"),
              Text(
                "This page isn't available right now",
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

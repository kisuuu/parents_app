import 'package:flutter/material.dart';

import 'package:school_parent_app/screens/notice_screen.dart';

class Notice {
  final String title;
  final String subtitle;

  Notice({required this.title, required this.subtitle});
}

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  State<NoticeBoard> createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  List<Notice> writtennotice = [
    Notice(
      subtitle: '02 March 2022',
      title:
          'Holiday Homework of Summer vacation 2022 – 2023 has been uploaded and you can download it by clicking on the link',
    ),
    Notice(
      subtitle: '02 March 2022',
      title:
          'FEE EXEMPTION\nDear Parent, The COVID-19 outbreak has had a negative influence on the country, especially in terms of its impact on students, as a special step for the academic year 2021-2022; The School has decided not…',
    ),
    Notice(
      subtitle: '02 March 2022',
      title:
          'Janmashtami\nDear Parent,Online classes will remain suspended tomorrow i.e. on 30-08-2021 (Monday) on Occasion of Janmashtami.The school office will remain operational between 11:00 AM to 2:00 PM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notice Board",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        child: ListView.builder(
          itemCount: writtennotice.length,
          itemBuilder: (context, index) {
            final userss = writtennotice[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 232, 226, 226),
                    width: 1, //
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    userss.title,
                    maxLines: 1,
                  ),
                  subtitle: Text(
                    userss.subtitle,
                    maxLines: 1,
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NoticePage(noticescreeen: userss),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school_parent_app/screens/event_screen.dart';

class User {
  final String title;
  final String subtitle;
  final String image;

  User({required this.title, required this.subtitle, required this.image});
}

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List<User> users = [
    User(
      title: 'Annual Day',
      subtitle:
          "The school's annual day is the culmination of its academic year. It is that time of the year where we celebrate and recognize the school's as well as the students' achievements. It gives the students an opportunity to showcase their unique talents and achievements",
      image: 'assets/images/gallery10.png',
    ),
    User(
      title: 'Sports Day',
      subtitle:
          "The school's Sports day is the culmination of its academic year. It is that time of the year where we celebrate and recognize the school's as well as the students' achievements. It gives the students an opportunity to showcase their unique talents and achievements",
      image: 'assets/images/gallery1.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Events",
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
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
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
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(user.image),
                    ),
                    title: Text(user.title),
                    subtitle: Text(
                      user.subtitle,
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
                          builder: (context) => UserPage(user: user),
                        ),
                      );
                    },
                  ),
                ),
              );
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ForStudents(
            image_location: 'assets/images/Play_Quiz_blue.png',
            image_caption: "Play Quiz",
          ),
          ForStudents(
            image_location: 'assets/images/Play_Quiz_blue.png',
            image_caption: "Play Quiz",
          ),
          ForStudents(
            image_location: 'assets/images/Play_Quiz_blue.png',
            image_caption: "Play Quiz",
          ),
          ForStudents(
            image_location: 'assets/images/Play_Quiz_blue.png',
            image_caption: "Play Quiz",
          ),
        ],
      ),
    );
  }
}

class ForStudents extends StatelessWidget {
  const ForStudents(
      {Key? key, required this.image_location, required this.image_caption})
      : super(key: key);

  final String image_location;
  final String image_caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

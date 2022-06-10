import 'package:flutter/material.dart';

class GalleryDetailsPage extends StatelessWidget {
  final String imagePath;
  final int index;
  GalleryDetailsPage({required this.imagePath, required this.index});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Hero(
                    tag: 'logo$index',
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          // fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

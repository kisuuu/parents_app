import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(
  String hintText,
) {
  return InputDecoration(
    hintText: hintText,
    contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
  );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
          shape: StadiumBorder(),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        onPressed: onClicked,
      );
}

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  const Button({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16,)
        ),
          onPressed: onClicked,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}

import 'package:flutter/material.dart';

class StarButton extends StatefulWidget {
  @override
  _StarButtonState createState() => _StarButtonState();
}

class _StarButtonState extends State<StarButton> {
  bool isStar = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isStar ? Icons.star : Icons.star_border,
        color: Colors.yellow,
        size: 40,
      ),
      onPressed: () {
        setState(() {
          isStar = !isStar;
        });
      },
    );
  }
}

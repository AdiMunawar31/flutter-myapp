import 'package:flutter/material.dart';

class Colour extends StatelessWidget {
  final String name;
  final int type;
  final int color;

  Colour(this.name, this.type, this.color);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
                width: 160,
                margin: EdgeInsets.only(top: 40),
                color: Color(type),
                padding: EdgeInsets.all(50),
                child: Flexible(
                    flex: 1,
                    child: Center(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(color),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ))),
          ],
        )
      ],
    );
  }
}

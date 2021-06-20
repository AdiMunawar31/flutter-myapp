import 'package:flutter/material.dart';
import 'package:myapp/responsive/welcome_mobile.dart';
import 'package:myapp/responsive/welcome_web.dart';
import 'package:myapp/screen/home_screen.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF04071F),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return WelcomeWeb();
            } else {
              return WelcomeMobile();
            }
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/responsive/welcome_mobile.dart';
import 'package:myapp/responsive/welcome_web.dart';

class Welcome extends StatelessWidget {
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

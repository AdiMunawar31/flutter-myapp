import 'package:flutter/material.dart';
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

// MOBILE BREAKPOINTS

class WelcomeMobile extends StatefulWidget {
  @override
  _WelcomeMobileState createState() => _WelcomeMobileState();
}

class _WelcomeMobileState extends State<WelcomeMobile> {
  TextEditingController controller = TextEditingController();

  double getBig(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // BOTTOM CIRCULLAR ===========================================================

        Positioned(
          right: -getBig(context) / 3,
          bottom: -getBig(context) / 3,
          child: Opacity(
            opacity: 0.2,
            child: Container(
                width: getBig(context),
                height: getBig(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1D065B),
                )),
          ),
        ),

        // LISTVIEW ====================================================

        Container(
          margin: EdgeInsets.only(top: 150),
          child: Align(
            alignment: Alignment.center,
            child: ListView(
              children: [
                // CARD ==========================================================

                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(children: [
                    Center(
                      child: Text(
                        "Input Your Name!",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25.0, top: 15.0),
                      child: Text(
                        controller.text.toUpperCase(),
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCC7E0A)),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        fillColor: Colors.blue[300],
                        suffixIcon: Icon(Icons.person),
                        hintText: 'Input Your Name...',
                        filled: true,
                      ),
                      onChanged: (val) {
                        setState(() {});
                      },
                      controller: controller,
                    )
                  ]),
                ),

                // Button ========================================================

                Center(
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 7 / 8,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0XFFCC7E0A),
                                  Colors.pink,
                                ])),
                        child: Material(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.transparent,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Home();
                                }));
                              },
                              child: Center(
                                  child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        )),
                  ),
                ),

                // TEXT SIGN UP ===================================================
              ],
            ),
          ),
        )
      ],
    );
  }
}

// WEB BREAKPOINTS

class WelcomeWeb extends StatefulWidget {
  @override
  _WelcomeWebState createState() => _WelcomeWebState();
}

class _WelcomeWebState extends State<WelcomeWeb> {
  TextEditingController controller = TextEditingController();

  double getBig(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // BOTTOM CIRCULLAR ===========================================================

        Positioned(
          right: -getBig(context) / 3,
          bottom: -getBig(context) / 3,
          child: Opacity(
            opacity: 0.2,
            child: Container(
                width: getBig(context),
                height: getBig(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1D065B),
                )),
          ),
        ),

        // LISTVIEW ====================================================

        Container(
          margin: EdgeInsets.only(top: 150),
          child: Align(
            alignment: Alignment.center,
            child: ListView(
              children: [
                // CARD ==========================================================

                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(children: [
                    Center(
                      child: Text(
                        "Input Your Name!",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25.0, top: 15.0),
                      child: Text(
                        controller.text.toUpperCase(),
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCC7E0A)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 4 / 8,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)),
                          fillColor: Colors.blue[300],
                          suffixIcon: Icon(Icons.person),
                          hintText: 'Input Your Name...',
                          filled: true,
                        ),
                        onChanged: (val) {
                          setState(() {});
                        },
                        controller: controller,
                      ),
                    )
                  ]),
                ),

                // Button ========================================================

                Center(
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 4 / 8,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0XFFCC7E0A),
                                  Colors.pink,
                                ])),
                        child: Material(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.transparent,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Home();
                                }));
                              },
                              child: Center(
                                  child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        )),
                  ),
                ),

                // TEXT SIGN UP ===================================================
              ],
            ),
          ),
        )
      ],
    );
  }
}

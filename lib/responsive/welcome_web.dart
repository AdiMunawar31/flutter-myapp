import 'package:flutter/material.dart';
import 'package:myapp/components/starButton.dart';
import 'package:myapp/screen/home_screen.dart';

class WelcomeWeb extends StatelessWidget {
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
                    SizedBox(
                      height: 50,
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

                // Star ===================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Text(
                        "GIVE ME A STARS ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StarButton(),
                      StarButton(),
                      StarButton(),
                      StarButton(),
                      StarButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

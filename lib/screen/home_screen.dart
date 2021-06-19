import 'package:flutter/material.dart';
import 'package:myapp/components/colour.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFF04071F),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: AppBar(
                backgroundColor: Color(0xFF1D065B),
                flexibleSpace: Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        Center(
                          child: Text("D2Y COLORS",
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Center(
                          child: Text("FLUTTER COLORS CLASS",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 80),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Colour('red', 0xFFF44336, 0xFFFFFFFF),
                          Colour('green', 0xFF4CAF50, 0xFFFFFFFF),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Colour('yellow', 0xFFFFEB3B, 0xff000000),
                          Colour('blue', 0xFF2196f3, 0xFFFFFFFF),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Colour('pink', 0xFFE91E63, 0xFFFFFFFF),
                          Colour('orange', 0xFFff5722, 0xFFFFFFFF),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Colour('teal', 0xFF009688, 0xFFFFFFFF),
                          Colour('indigo', 0xFF3f51b5, 0xFFFFFFFF),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Colour('grey', 0xFF9E9E9E, 0xFFFFFFFF),
                          Colour('brown', 0xFF795548, 0xFFFFFFFF),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}

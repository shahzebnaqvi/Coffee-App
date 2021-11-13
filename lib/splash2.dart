import 'dart:async';

import 'package:flutter/material.dart';

class splash2 extends StatefulWidget {
  splash2({Key? key}) : super(key: key);

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  List lst = [
    "The little coffee shop serve specialty",
    "coffee, fancy, grilled cheese sandwiches,",
    "Scratch cooking, craft ales, and cider"
  ];

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => splash2())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: maincontainer(context, lst),
    );
  }
}

Widget maincontainer(BuildContext context, lst) {
  return SingleChildScrollView(
    child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
              image: AssetImage(
                "assets/splash2.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  bottom: MediaQuery.of(context).size.height * 0.18),
              child: Icon(
                Icons.coffee_rounded,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
            Text(
              lst[0],
              style: TextStyle(color: Colors.white),
            ),
            Text(
              lst[1],
              style: TextStyle(color: Colors.white),
            ),
            Text(
              lst[2],
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.03),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                        side: BorderSide(color: Colors.white)),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.05,
                        left: MediaQuery.of(context).size.width * 0.05),
                    child: Text("Get Started"),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.04,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.04,
                ),
                Icon(
                  Icons.circle_outlined,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.04,
                ),
              ],
            )
          ],
        )),
  );
}

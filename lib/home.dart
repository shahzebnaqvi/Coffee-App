import 'package:coffee/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee"),
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Expanded(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: false,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Text("data");
                }),
          ),
        ),
      ),
    );
  }
}

Widget maincontainer(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(
      MediaQuery.of(context).size.width * 0.005,
    ),
    width: MediaQuery.of(context).size.width * 0.48,
    child: Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Expresso"),
          Text("data"),
          Image(image: AssetImage("assets/images/1.jpg")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("\$4.35"), Icon(Icons.favorite_outlined)],
          ),
        ]),
      ),
    ),
  );
}

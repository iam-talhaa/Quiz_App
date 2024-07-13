import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  List<int> mylist = [];
  ResultScreen({super.key, required this.mylist});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<int> Answerkey = [
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
  ];
  int marks = 0;
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 10; i++) {
      if (widget.mylist[i] == Answerkey[i]) {
        marks = marks + 1;
      } else {
        marks = marks + 0;
      }
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(marks);
      }),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xff1f005c),
        title: Text(
          "Result",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * 1 / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Text(
                      marks >= 5 ? "Congratulation" : "Sorry",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),

                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          shape: BoxShape.circle),
                      child: Text(" ${marks} /10 "),
                    ),
                    // Text(widget.mylist.toString()),
                    // Text(Answerkey.toString()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

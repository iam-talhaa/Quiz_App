import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  List<int> mylist = [];
  ResultScreen({super.key, required this.mylist});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<int> Answerkey = [1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3];
  int marks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Column(
              children: [
                for(int i = 0; i <= Answerkey.length; i++)
                  if(){

                  }else{
                    
                  }
              ],
            ),
          )
        ],
      ),
    );
  }
}

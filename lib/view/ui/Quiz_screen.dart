import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> Question = [
    "Flutter Was developed by",
    "What is the programming language used to develop Flutter apps?",
    "What is the core concept in Flutter that allows for building UIs?",
    "What is the benefit of using \"Hot Reload\" in Flutter development?",
    "What are two ways to manage state in a Flutter application?",
    "What is the official widget for displaying navigation bars at the bottom of the screen in Flutter?",
    "How do you navigate between different screens in a Flutter app?",
    "What is the advantage of using a single codebase for both iOS and Android development in Flutter?",
    "What is the primary way to create animations in Flutter?"
        "What file extension is used for Flutter source code files?",
  ];
  List<String> A = [
    "Apple",
    "Java",
    "Activities (like in Android)",
    "Faster app launch times",
    "BLoC and Redux",
    "AppBar",
    "By manually reloading the app with new code",
    "Faster development time",
    "Using pre-built animation libraries",
    ".xml",
  ];
  List<String> B = [
    "Meta",
    "Kotlin",
    "Fragments (like in Android)",
    "Ability to debug code on multiple devices",
    "XML layouts and State objects",
    "BottomNavigationBar",
    "Using a dedicated navigation package or native navigation APIs",
    "Reduced code maintenance",
    "By manually manipulating widget properties over time",
    ".java",
  ];
  List<String> C = [
    "Microsoft",
    "Dart",
    "Widgets",
    "Seeing code changes reflected in the app instantly without restarting",
    "Navigation and Routing",
    "TabBar",
    "Directly referencing widgets from different screens",
    "Both A and B",
    "Through custom view classes (like in Android)",
    ".dart",
  ];
  List<String> D = [
    "Google",
    "Swift",
    "XML layouts",
    "Easier code collaboration",
    "Widgets and Layouts",
    "FloatingActionButton",
    "There's no built-in navigation in Flutter",
    "There's no built-in navigation in Flutter",
    "No advantage, separate codebases are better",
    "There's no built-in animation support in Flutter",
    ".kt"
  ];
  List<String> Answer = [""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quiz Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: Question.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 1 / 2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green[300]),
                        child: Column(
                          children: [
                            Text('Question',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Divider(
                              color: Colors.black,
                            ),
                            Text(
                              Question[index].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadioMenuButton(
                                    value: A[index].toString(),
                                    groupValue: B[index].toString(),
                                    onChanged: (A[index].toString()) {
                                      setState(() {
                                        Answer.add(v.toString());
                                      });
                                    },
                                    child: Text(A[index].toString())),
                                RadioMenuButton(
                                    value: B[index].toString(),
                                    groupValue: B[index].toString(),
                                    onChanged: (B[index].toString()) {
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Text(B[index].toString())),
                                RadioMenuButton(
                                    value: C[index].toString(),
                                    groupValue: B[index].toString(),
                                    onChanged: (C[index].toString()) {
                                      setState(() {
                                       Answer.add(C[index].toString());
                                      });
                                    },
                                    child: Text(C[index].toString())),
                                RadioMenuButton(
                                    value: D[index].toString(),
                                    groupValue: B[index].toString(),
                                    onChanged: (D[index].toString()) {
                                      setState(() {
                                        Answer.add(D[index].toString());
                                      });
                                    },
                                    child: Text(D[index].toString())),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

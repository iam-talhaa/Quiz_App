import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/view/ui/resultClass.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> Question = [
    "Flutter Was developed by",
    "What is the programming language use \nto develop Flutter apps?",
    "What is the core concept in Flutter that allows for building UIs?",
    "What is the benefit of using \"Hot\n Reload\" in Flutter development?",
    "What are two ways to manage state in\n a Flutter application?",
    "What is the official widget for displaying\n navigation bars at the bottom of the screen in Flutter?",
    "How do you navigate between different \nscreens in a Flutter app?",
    "What is the advantage of using a single \ncodebase for both iOS and Android development in Flutter?",
    "What is the primary way to create animations\n in Flutter?",
    "What file extension is used for Flutter \nsource code files?",
  ];
  List<String> A = [
    "Apple",
    "Java",
    "Activities (like in Android)",
    "Faster app launch times",
    "BLoC and Redux",
    "AppBar",
    "By manually reloading the app\n with new code",
    "Faster development time",
    "Using pre-built animation libraries",
    ".xml",
  ];
  List<String> B = [
    "Meta",
    "Kotlin",
    "Fragments (like in Android)",
    "Ability to debug code on multiple\n devices",
    "XML layouts and State objects",
    "BottomNavigationBar",
    "Using a dedicated navigation package \nor native navigation APIs",
    "Reduced code maintenance",
    "By manually manipulating widget \n properties over time",
    ".java",
  ];
  List<String> C = [
    "Microsoft",
    "Dart",
    "Widgets",
    "Seeing code changes reflected in \nthe app instantly without restarting",
    "Navigation and Routing",
    "TabBar",
    "Directly referencing widgets from\n different screens",
    "Both A and B",
    "Through custom view classes ",
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
    "No advantage, separate codebases\n are better",
    "There's no built-in animation \n support in Flutter",
    ".kt",
  ];

  List<int> SubmitedAnswer = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
  ];
  int one = 0;

  int myvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ResultScreen(
                        mylist: SubmitedAnswer,
                      )));
            },
            child: Container(
              height: 33,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xfff39060)),
              child: Center(
                  child: Text(
                'SUBMIT',
                style: TextStyle(
                    color: Color(0xff1f005c), fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xff1f005c),
        title: Text(
          "Quiz Screen",
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
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: Question.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Card(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffca485c).withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Question',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  Question[index].toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RadioMenuButton(
                                      value: 1,
                                      groupValue: myvalue,
                                      onChanged: (val) {
                                        print(val);
                                        SubmitedAnswer[index] = val!;
                                        setState(() {});
                                      },
                                      child: Text(A[index].toString())),
                                  RadioMenuButton(
                                      value: 2,
                                      groupValue: myvalue,
                                      onChanged: (val) {
                                        print(val);
                                        SubmitedAnswer[index] = val!;
                                        setState(() {});
                                      },
                                      child: Text(B[index].toString())),
                                  RadioMenuButton(
                                      value: 3,
                                      groupValue: myvalue,
                                      onChanged: (val) {
                                        print(val);
                                        SubmitedAnswer[index] = val!;
                                        setState(() {});
                                      },
                                      child: Text(C[index].toString())),
                                  RadioMenuButton(
                                      value: 4,
                                      groupValue: myvalue,
                                      onChanged: (val) {
                                        print(val);
                                        SubmitedAnswer[index] = val!;
                                        setState(() {});
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
            ),
          ],
        ),
      ),
    );
  }
}

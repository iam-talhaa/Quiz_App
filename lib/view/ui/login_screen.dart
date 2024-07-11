import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/view/Widgets/Button.dart';
import 'package:flutter_quiz_app/view/Widgets/TextFormField.dart';
import 'package:flutter_quiz_app/view/ui/Quiz_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: Height * 1 / 3,
            ),
            MYTextField(
              controller: _emailController,
              myhint: 'EMAIL',
              p_icon: Icon(Icons.mail),
            ),
            MYTextField(
              controller: _emailController,
              myhint: 'Password',
              p_icon: Icon(Icons.password),
            ),
            SizedBox(
              height: Height * 0.1,
            ),
            MyButton(
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => QuizScreen()));
                },
                B_text: "Log In")
          ],
        ),
      ),
    );
  }
}

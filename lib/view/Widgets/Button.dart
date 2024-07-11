import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  VoidCallback ontap;
  String B_text;
  MyButton({required this.ontap, required this.B_text});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue[200], borderRadius: BorderRadius.circular(20)),
        child: Center(child: Text("${widget.B_text}")),
      ),
    );
  }
}

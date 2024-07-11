import 'package:flutter/material.dart';

class MYTextField extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  final myhint;
  final Icon p_icon;
  MYTextField(
      {super.key,
      required this.controller,
      required this.myhint,
      required this.p_icon});

  @override
  State<MYTextField> createState() => _MYTextFieldState();
}

class _MYTextFieldState extends State<MYTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            prefixIcon: widget.p_icon,
            hintText: widget.myhint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

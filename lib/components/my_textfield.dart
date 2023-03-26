import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final IconData? specIcon;
  final controller;

  const MyTextField(
      {super.key,
      required this.obscureText,
      required this.specIcon,
      required this.controller,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: Colors.orange.shade200),
          ),
          labelText: labelText,
          fillColor: Colors.grey[900],
          filled: true,
          labelStyle: TextStyle(color: Colors.orange[200]),
          prefixIcon: Icon(specIcon, color: Colors.white, size: 22),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

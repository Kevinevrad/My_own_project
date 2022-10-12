import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final String text;
  final String htext;
  final double bord;
  final IconData? icon;
  //bool test;

  textfield(
      {required this.text,
      required this.htext,
      required this.bord,
      //this.test = false,
      this.icon});

  @override
  Widget build(BuildContext context) {
    late TextEditingController controllername = TextEditingController();
    return TextFormField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          //fillColor: Color.fromARGB(255, 240, 236, 236),
          labelText: text,
          labelStyle: TextStyle(fontSize: 18),
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          hintText: htext,
          prefixIcon: Icon(icon),
          contentPadding: EdgeInsets.fromLTRB(15, 10, 0, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(bord),
            borderSide: const BorderSide(),
          )),
      validator: (value) {
        if (value != null && value.isEmpty) {
          return '$text is required';
        }
        return null;
      },
      //autovalidateMode: AutovalidateMode.onUserInteraction,
      //controller: controllername,
      // autofocus: true,
    );
  }
}

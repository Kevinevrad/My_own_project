import 'package:flutter/material.dart';

class Box_scroll extends StatefulWidget {
  Color? Couleur;
  bool test;
  String? text;
  Box_scroll({super.key, this.Couleur, this.test = true, required this.text});

  @override
  State<Box_scroll> createState() => _Box_scrollState();
}

class _Box_scrollState extends State<Box_scroll> {
  @override
  Widget build(BuildContext context) {
    bool test1 = true;
    return Container(
      
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: widget.test ? Color.fromARGB(255, 3, 55, 122) : widget.Couleur,
          border:
              Border.all(color: Color.fromARGB(255, 227, 226, 226), width: 2)),
      child: Center(
        child: Text(
          '${widget.text}',
          style: TextStyle(
              fontSize: 22, color: widget.test ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

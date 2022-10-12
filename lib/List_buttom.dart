import 'package:flutter/material.dart';
import 'package:login_app/List_buttom.dart';
import 'package:login_app/buttom_scroll.dart';

class Listbuttom extends StatefulWidget {
  Listbuttom({super.key});

  List Tab = [
    Box_scroll(text: 'All'),
    Box_scroll(
      text: 'Electronics Appiliance',
      test: false,
    ),
    Box_scroll(
      text: 'Shirt',
      test: false,
    ),
    Box_scroll(
      text: 'Maintenace',
      test: false,
    )
  ];

  @override
  State<Listbuttom> createState() => _ListbuttomState();
}

class _ListbuttomState extends State<Listbuttom> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 15,
          ),
          widget.Tab[0],
          SizedBox(
            width: 15,
          ),
          widget.Tab[1],
          SizedBox(
            width: 15,
          ),
          widget.Tab[2],
          SizedBox(
            width: 15,
          ),
          widget.Tab[3],
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
    ;
  }
}

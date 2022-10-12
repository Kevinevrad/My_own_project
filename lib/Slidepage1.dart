import 'package:flutter/material.dart';

class Slidepage1 extends StatelessWidget {
  const Slidepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Stack(
            children: [
              Image.asset('images/back_slide1.png'),
              Image.asset('images/slide1_removebg.png',)
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            child: Text(
              'Hello!  Welcome',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
            ),
          )
        ],
      ),
    );
  }
}

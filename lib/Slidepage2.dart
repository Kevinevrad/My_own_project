import 'package:flutter/material.dart';

class Slidepage2 extends StatelessWidget {
  const Slidepage2({super.key});

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
              Container(
                  height: 400,
                  child: Image.asset(
                    'images/back_slide1.png',
                    fit: BoxFit.cover,
                  )),
              Image.asset(
                'images/slide2_removebg.png',
              )
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

import 'package:flutter/material.dart';
import 'package:login_app/Slider.dart';

import 'fisrt_page.dart';

class Loadingscreen extends StatefulWidget {
  const Loadingscreen({super.key});

  @override
  State<Loadingscreen> createState() => _LoadingscreenState();
}

class _LoadingscreenState extends State<Loadingscreen> {
  @override
  void initState() {
    super.initState();
   _navigatedtohome();
  }

  _navigatedtohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SliderPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/screen4.png',
                    ),
                    fit: BoxFit.cover)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                  child: Icon(
                    Icons.login_rounded,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                child: Text(
                  'LOGIN APP',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 2),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

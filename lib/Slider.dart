import 'package:flutter/material.dart';
import 'package:login_app/Slidepage1.dart';
import 'package:login_app/Slidepage2.dart';
import 'package:login_app/Slidepage3.dart';
import 'package:login_app/fisrt_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  PageController _controller = PageController();
  bool onlastpage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastpage = (index == 2);
            });
          },
          children: [Slidepage1(), Slidepage2(), Slidepage3()],
        ),

        // button making
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _controller.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      });
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                SmoothPageIndicator(controller: _controller, count: 3),
                onlastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => first_page(),
                              ));
                        },
                        child: Text('Begin'))
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          });
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )),
              ],
            ))
      ],
    ));
  }
}

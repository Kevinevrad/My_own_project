import 'package:flutter/material.dart';

class floatButton extends StatefulWidget {
  const floatButton({super.key});

  @override
  State<floatButton> createState() => _floatButtonState();
}

class _floatButtonState extends State<floatButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 90,
          height: 90,
          padding: EdgeInsets.all(45),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Text('data'),
        ),
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 3, 55, 122),
          child: Icon(Icons.camera_alt_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}

// ignore_for_file: camel_case_types, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/Loadpage.dart';
import 'package:login_app/fisrt_page.dart';
import 'package:login_app/textField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      home: Loadingscreen(),
      title: 'Log in Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color(0xFF03377A),
        fontFamily: 'ProductSans',
      ),
    );
  }
}

class MonForm extends StatefulWidget {
  const MonForm({super.key});

  @override
  State<MonForm> createState() => _MonFormState();
}

class _MonFormState extends State<MonForm> {
  @override
  Widget build(BuildContext context) {
    return const first_page();
  }
}

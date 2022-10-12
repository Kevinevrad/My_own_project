// ignore_for_file: camel_case_types, unnecessary_new
import 'package:login_app/textField.dart';

import 'button_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/fisrt_page.dart';
import 'package:login_app/main.dart';

class sign_up_page extends StatefulWidget {
  const sign_up_page({super.key});

  @override
  State<sign_up_page> createState() => _sign_up_pageState();
}

class _sign_up_pageState extends State<sign_up_page> {
  String _name = '';
  String _prenom = '';
  String _email = '';
  String _number = '';

  final TextEditingController _controllername = TextEditingController();
  final TextEditingController _controllerprenom = TextEditingController();

  final GlobalKey _formkey = GlobalKey<FormState>();

  Widget _buildName() {
    return textfield(
      text: 'Name',
      htext: "your name",
      bord: 5,
      icon: Icons.account_circle_outlined,
    );
  }

  Widget _buildPrenom() {
    return textfield(
      text: 'Surname',
      htext: 'your surname is required',
      bord: 5,
      icon: Icons.account_box,
    );
  }

  Widget _buildEmail() {
    return textfield(
      text: 'Email',
      htext: 'your mail',
      bord: 5,
      icon: Icons.mail_outline,
    );
  }

  Widget _buildNumber() {
    return textfield(
      text: 'Number',
      htext: 'your number',
      bord: 5,
      icon: Icons.tag,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back.jpg'),
                fit: BoxFit.cover,
                opacity: 1,
                colorFilter:
                    ColorFilter.mode(Colors.lightBlue, BlendMode.dstIn))),
        child: ListView(
          children: [
            const SizedBox(
              height: 120,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 10, 10, 200),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    _buildName(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildPrenom(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildEmail(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildNumber(),
                    const SizedBox(
                      height: 30,
                    ),

                    //button call
                    Custombtn(txt: 'submit', test1: false),
                    //button call

                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account ',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: const Text(
                            'click here',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 255),
                                fontSize: 17),
                          ),
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MonForm();
                          })),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

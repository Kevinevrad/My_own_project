// ignore_for_file: camel_case_types, unnecessary_new

import 'button_app.dart';
import 'textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/sign_up_page.dart';
import 'button_app.dart';

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  bool isChecked = false;
  String _email = '';
  String _psswrd = '';

  final _forKey = GlobalKey<FormState>();
  Widget _buildEmail() => textfield(
        text: 'Email',
        htext: "your Email",
        bord: 5,
        icon: Icons.mail_outlined,
      );
  Widget _buildPassword() => textfield(
        text: 'Password',
        htext: 'Enter Something',
        bord: 5,
        icon: Icons.password_outlined,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back.jpg'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              //---------->   Premier bloc  <-------------
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Welcome \nBack',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 118),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'images/img1RBG.png',
                    width: 150,
                  ),
                ],
              ),
            ),
            //------------> Deuxieme Bloc <---------------
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Form(
                  key: _forKey,
                  child: Column(
                    children: [
                      _buildEmail(),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildPassword()
                    ],
                  )),
            ),

            //------------> Troisieme Bloc <---------------

            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.blue,
                      //fillColor:  materialpr,
                      value: isChecked,
                      onChanged: ((bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      })),
                ),
                const Text(
                  'Remenber Me',
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            //------------> Quatrieme Bloc <---------------

            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                children: [
                  Custombtn(txt: 'Login', test1: true),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                            child: Divider(
                          //thickness: 2,
                          color: Colors.grey,
                        )),
                        Text(
                          '   Log With   ',
                          style: TextStyle(fontSize: 18),
                        ),
                        Expanded(
                            child: Divider(
                          //thickness: 2,
                          color: Colors.grey,
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'icons/facebook1.svg',
                              height: 35,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'icons/twitter1.svg',
                            height: 35,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'icons/google.svg',
                            height: 35,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'icons/apple1.svg',
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont Have an account ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const sign_up_page(),
                              ));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 102, 185)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

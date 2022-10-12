// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/Slidepage1.dart';
import 'package:login_app/List_buttom.dart';
import 'package:login_app/bottmnagig.dart';
import 'package:login_app/drawer.dart';
import 'package:login_app/floatingbutton.dart';
import 'package:login_app/textField.dart';
import 'package:login_app/bottmnagig.dart';
import 'package:login_app/box_scroll.dart';
import 'list_horizontal.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  Widget Healines(text) {
    return Row(
      children: [
        SizedBox(
          width: 12,
        ),
        Text(
          '$text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: 100,
          child: Divider(
            color: Color.fromARGB(255, 240, 236, 236),
            thickness: 2,
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
              color: Color.fromARGB(255, 3, 55, 122),
              fontWeight: FontWeight.bold,
              fontSize: 17),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color Couleur = Color(0xFFF6F6F6);
    return Scaffold(
      drawer: Drawerpage(),
      bottomNavigationBar: NavBar(),
      floatingActionButton: floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5.0,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.notifications_none_rounded),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: (() {}),
            child: Icon(Icons.shopping_cart_outlined),
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 40,
                  color: Couleur,
                  child: textfield(
                    text: 'Search',
                    htext: '',
                    bord: 5,
                    icon: Icons.search,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Couleur,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'images/filter.png',
                        height: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Healines('TRENDING PRODUCTS'),
            SizedBox(
              height: 10,
            ),
            ListHorizon(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Healines('POPULAR CATEGORIES'),
            SizedBox(
              height: 15,
            ),
            Listbuttom(),
            SizedBox(
              height: 10,
            ),
            // ListHorizon(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

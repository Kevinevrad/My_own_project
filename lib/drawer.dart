import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Drawerpage extends StatelessWidget {
    Drawerpage({super.key});

  String? text;
  IconData? icon;
  bool test = true;
  final int _position = 0;
  Widget Listtitle(text, icon) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }

  Widget Link(text) {
    return InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          'icons/$text.svg',
          height: 35,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      child: ListView(
        children: [
          Container(
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Nom',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Profession',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(thickness: 2),
          SizedBox(
            height: 20,
          ),
          Listtitle('Home', Icons.home),
          Listtitle('About', Icons.info_outline_rounded),
          Listtitle('Settings', Icons.settings),
          Listtitle('Phone', Icons.phone),
          SizedBox(
            height: 20,
          ),
          Divider(thickness: 2),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Link('facebook1'),
              SizedBox(
                width: 20,
              ),
              Link('twitter1'),
              SizedBox(
                width: 20,
              ),
              Link("google"),
              SizedBox(
                width: 20,
              ),
              Link('apple1')
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: const Text(
              'LOGIN APP',
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

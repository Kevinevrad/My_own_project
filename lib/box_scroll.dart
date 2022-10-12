import 'package:flutter/material.dart';
import 'package:login_app/Desc_Page.dart';

class SilderBox extends StatelessWidget {
  String imgpath;
  String headline;
  String pricetxt;
  SilderBox(
      {super.key,
      required this.imgpath,
      required this.headline,
      required this.pricetxt});

  @override
  Widget build(BuildContext context) {
    Color Couleur = Color.fromARGB(255, 239, 239, 239);
    return Container(
      width: 180,
      height: 90,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(width: 2, color: Couleur)),
      child: Column(
        children: [
          Container(
            width: 190,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Couleur,
            ),
            child: Image.asset(
              '$imgpath',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            headline,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '£ ${pricetxt}',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Couleur,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 18,
                      color: Color.fromARGB(255, 3, 55, 122),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

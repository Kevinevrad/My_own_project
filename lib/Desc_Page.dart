import 'package:flutter/material.dart';

import 'package:login_app/list_horizontal.dart';
import 'package:login_app/tab.dart';

class Desc_page extends StatefulWidget {
  String? imgPath;
  String? Header, Cotation, price;

  IconData icon1 = Icons.favorite;
  IconData icon = Icons.favorite_border;

  Desc_page(
      {super.key,
      required this.imgPath,
      required this.Header,
      required this.Cotation,
      required this.price});

  @override
  State<Desc_page> createState() => _Desc_pageState();
}

class _Desc_pageState extends State<Desc_page> {
  bool changecol = true, val = true;
  String? cot, price;
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                //color: Colors.grey,

                height: 300,
                width: 500,

                // color: Colors.grey,
                child: Image.asset(
                  '${widget.imgPath}',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 120,
                // color: Colors.black,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                    SizedBox(
                      width: 280,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            changecol = !changecol;
                          });
                        },
                        icon: changecol
                            ? Icon(
                                Icons.favorite_border,
                                size: 30,
                              )
                            : Icon(Icons.favorite, size: 30)),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${widget.Header}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        val = !val;
                      });
                    },
                    icon: val
                        ? Icon(
                            Icons.star_border,
                            size: 23,
                          )
                        : Icon(
                            Icons.star,
                            size: 23,
                          )),
                SizedBox(
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                  child: Text(
                    '${widget.Cotation}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  '${widget.price}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade400),
                )
              ],
            ),
          ),
          Tabview(
            mot: 'About',
            mot1: 'Review',
            mot2: 'Offers',
            mot3: 'Policy',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 3, 55, 122),
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(width: 2, color: Colors.white)),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '$num',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(width: 2, color: Colors.white)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 3, 55, 122),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('ADD TO CARD',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 40,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_app/box_scroll.dart';

import 'Desc_Page.dart';

class ListHorizon extends StatelessWidget {
  ListHorizon({super.key});
  String? chmin;

  var Tab = [
    SilderBox(
        imgpath: 'images/sofa_removebg.png',
        headline: 'Sofa',
        pricetxt: '1700'),
    SilderBox(
        imgpath: 'images/chair_removebg.png',
        headline: 'Chair',
        pricetxt: '2000'),
    SilderBox(
        imgpath: 'images/Chair1_removebg.png',
        headline: 'Sofa',
        pricetxt: '5000'),
    SilderBox(
        imgpath: 'images/sofa_removebg.png',
        headline: 'Canapé',
        pricetxt: '8000'),
  ];

  var Tab1 = [
    'images/chair_removebg.png',
    'Chair1_removebg.png',
    'images/sofa_removebg.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 1000,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Desc_page(
                          imgPath: 'images/sofa_removebg.png',
                          Header: 'LigthBlue Sofa',
                          Cotation: '4.5',price: '\$ 1500'),
                    ));
              },
              child: Tab[0]),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Desc_page(
                      imgPath: 'images/chair_removebg.png',
                      Header: 'Yellow Chair',
                      Cotation: '5.7',
                      price: '\$ 2000',
                    );
                  },
                ));
              },
              child: Tab[1]),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Desc_page(
                              imgPath: 'images/Chair1_removebg.png',
                              Header: 'Bedroom Chair',
                              Cotation: '10',
                              price: '\$ 5000',
                            )));
              },
              child: Tab[2]),
          SizedBox(
            width: 10,
          ),
          Tab[3]
        ],
      ),
    );
  }
}

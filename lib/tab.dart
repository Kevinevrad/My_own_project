import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tabview extends StatefulWidget {
  String? mot, mot1, mot2, mot3;
  Tabview(
      {super.key,
      required this.mot,
      required this.mot1,
      required this.mot2,
      required this.mot3});

  @override
  State<Tabview> createState() => _TabviewState();
}

class _TabviewState extends State<Tabview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Container(
          height: 230,
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Material(
                  child: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      bottom: TabBar(
                          labelColor: Color.fromARGB(255, 3, 55, 122),
                          indicatorColor: Color.fromARGB(255, 3, 55, 122),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                                child: Text(
                              '${widget.mot}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            Tab(
                                child: Text(
                              '${widget.mot1}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            Tab(
                                child: Text(
                              '${widget.mot2}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            Tab(
                                child: Text(
                              '${widget.mot3}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                          ])),
                ),
              ),
              Expanded(
                  child: TabBarView(
                dragStartBehavior: DragStartBehavior.start,
                children: [func(), func(), func(), func()],
              ))
            ],
          ),
        ));
  }
}

Widget func() {
  return Container(
    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
    child: ListView(
      children: [
        Wrap(direction: Axis.horizontal, children: [
          Text(
            "azertyuiopaqsxzedfverfghnrtghn,thj,;fghiuytghjjhgfghjhyjtyuyttyuftyuioldfghjklfghjk",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 99, 96, 96),
            ),
          ),
          Text(
            "azertyuiopaqsxzedfverfghnrtghn,thj,;wsdfghjklkjhgfdfghjklkjhgfdfghjkjhgfdfghjkjhg",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 99, 96, 96),
            ),
          ),
          Text(
            "azertyuiopaqsxzedfverfghnrtghn,thj,;cfghjklmkjhgfdghjkljhgfdghjkljhgfghjkljhgfhjk",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 99, 96, 96),
            ),
          ),
          Text(
            "azertyuiopaqsxzedfverfghnrtghn,thj,;fghjklmùlkjhgfhjklmkjhgfdghjklmkjhgfghjkljhgfg",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 99, 96, 96),
            ),
          ),
          Text(
            "azertyuiopaqsxzedfverfghnrtghn,thj,;fghjklmùlkjhgfhjklmkjhgfdghjklmkjhgfghjkljhgfg",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 99, 96, 96),
            ),
          ),
          Text(
            "azertyuiopaqsxzedfverfghnrtghn,thj,;fghjklmùlkjhgfhjklmkjhgfdghjklmkjhgfghjkljhgfg",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 99, 96, 96),
            ),
          ),
        ]),
      ],
    ),
  );
}

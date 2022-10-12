import 'package:flutter/material.dart';
import 'package:login_app/page1.dart';
import 'package:login_app/buttom_scroll.dart';

class Custombtn extends StatelessWidget {
  final String txt;
  bool test1;
  Custombtn({super.key, required this.txt, this.test1 = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), gradient: LinearGradient(
              /**begin: Alignment.topLeft,
              end: Alignment(0.8, 1),*/
              colors: [Color(0xFF550BFC), Color(0xFF00FFA7)])),
      child: OutlinedButton(
          onPressed: () {
            _dialogBuilder(context);
          },
          child: Text(
            txt,
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }

  _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      barrierDismissible: false,
      //useSafeArea: false,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
          child: AlertDialog(
            //buttonPadding: EdgeInsets.fromLTRB(30, 0, 35, 0),
            //actionsPadding: EdgeInsets.all(2),
            title: Center(child: Text('POP UP')),
            titleTextStyle:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            content: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text('Voulez vous vous   $txt cliquer sur valider ')),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 100,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              ' vous avez cliqué sur Annuler ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text('Annuler')),
              OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xfffff))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page1(),
                        ));
                  },
                  child: Text('Valider')),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:aas_erfa/style.dart';

import 'halaman1.dart';
import 'halaman2.dart';

class halamanmenu extends StatelessWidget {
  const halamanmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network('assets/images/menu.jpg'),
          Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15,top: 29),
              child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return halamansatu();
                }));
              },
              child: Text('Women Watches'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(30, 35, 44, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),),

            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15,top: 29),
              child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return halamandua();
                }));
              },
              child: Text('Man Watches'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(30, 35, 44, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),),
        ],
      ),

    );
  }
  }
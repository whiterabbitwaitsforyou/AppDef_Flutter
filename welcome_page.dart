import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'package:aas_erfa/style.dart';



class  welcomepage extends StatelessWidget {
  const welcomepage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child:Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image.asset('assets/images/welcome.jpg'),

            Image.asset('assets/images/logo.png', width: 70, height: 70,),

            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15,top: 29),
              child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return loginpage();
                }));
              },
              child: Text('Login', style: tulisan),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(30, 35, 44, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),),

            Container(
              padding: EdgeInsets.only(right: 22,left: 22),
              margin: EdgeInsets.only(bottom: 29),
              height: 56,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return registerpage();
                  }));
                },
                child: Text('Register', style: tulisan2),
                style: TextButton.styleFrom(
                    side: BorderSide(color: Color.fromRGBO(30, 35, 44, 1) ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
            ),

            TextButton(onPressed: (){},
                child: Text('Login As Guest', style: tulisan2))
          ],

        ) ,)
    );
  }
}

// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class halamansatu extends StatelessWidget {
  final String tautanAPI = 'https://dummyjson.com/products/category/women-watches';
  Future<List<dynamic>> TampilData() async {
    var hasil = await http.get(Uri.parse(tautanAPI));
    return json.decode(hasil.body)['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('WOMEN WATCHES', style: TextStyle(color: Colors.white),), ),
     
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: TampilData(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(snapshot.data[index]['avatar']),
                    ),
                    title: Text(snapshot.data[index]['first_name'] + '' + snapshot.data[index]['last_name']),
                    subtitle: Text(snapshot.data[index]['email']),
                  );
                },
              );
            } else{
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}




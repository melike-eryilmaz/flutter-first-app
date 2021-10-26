//iki tane ana widget yapısı var.
//stateless widget ve stateful widget
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/login/login.dart';

//  Ekranda hiçbir veriyi değiştirmeyeceksem stateless widget.
//  Proje ilk ayağa kalktığı zaman stateless widget çalışır.

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Builcontext widget tree dir.Widget ı build ederken özelliklerini aktarır.
    return MaterialApp(
        title: 'First Flutter World :D',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            shadowColor: Colors.amberAccent,
            title: Text('Login'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.app_registration, color: Colors.pink[200]))
            ],
          ),
          body: Login(),
          // Center(
          //   child: Text('hellooo', style: TextStyle(color: Colors.lightBlue)),
          // ),
          backgroundColor: Colors.lime[50],
        ));
  }
}

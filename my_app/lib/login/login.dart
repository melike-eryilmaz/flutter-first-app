// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/catlist/catlist.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

//Bazı widgetlar child alır bazıları ise children alır:)
//children column ve row gibi..
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Login', style: TextStyle(color: Colors.blueGrey))),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
              //keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your username')),
        ),
        // SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
          child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password')),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
          onPressed: () {
            //pushReplacement geri tuşunu göstermez.geri gelemez sayfadan :)
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CatList()),
            );
          },
          child: const Text('Login'),
        ),
        SizedBox(height: 50)
      ],
    );
  }
}

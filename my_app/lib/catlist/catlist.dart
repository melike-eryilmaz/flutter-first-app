// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class CatList extends StatefulWidget {
  const CatList({Key? key}) : super(key: key);

  @override
  _CatListState createState() => _CatListState();
}

class _CatListState extends State<CatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Color(0xffff0f5f5),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0XFFFffe6f2),
                        blurRadius: 19.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    leading: Container(
                      child: Image.network(
                          'https://img-s1.onedio.com/id-55257c07af6b6a0336c2d89f/rev-0/raw/s-ffec9def22fc6d078df21304f9764051c267176a.jpg'),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Boncuk',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '4.2 km',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text('6 aylık kızımız yuva arıyor :)'),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        )),
                  ),
                ),
              );
            }),
      ),
      appBar: AppBar(
        title: Text('Cat List'),
      ),
    );
  }
}

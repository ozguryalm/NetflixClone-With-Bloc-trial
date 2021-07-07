import 'package:bloc_denemeleri/netflix.dart';
import 'package:bloc_denemeleri/screens/cart_screen.dart';
import 'package:bloc_denemeleri/screens/film_screen.dart';
import 'package:bloc_denemeleri/screens/product_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      // routes: {
      //   "/": (BuildContext context) => ProductListScreen(),
      //   "/cart": (BuildContext context) => CartScreen(),
      //   "/film": (BuildContext context) => FilmPage(),
      // },
      // initialRoute: "/film",
      home: Netflix(),
    );
  }
}

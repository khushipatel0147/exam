import 'package:exam/provider/productProvider.dart';
import 'package:exam/view/homeScreen.dart';
import 'package:exam/view/productScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductProvider(),
      )
    ],
    child: MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        'pro': (context) =>ProductScreen(),
      },

    ),
  ));
}

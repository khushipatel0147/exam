import 'package:exam/provider/productProvider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  ProductProvider? providerF;
  ProductProvider? providerT;

  Widget build(BuildContext context) {
    providerT = Provider.of<ProductProvider>(context, listen: true);
    providerF = Provider.of<ProductProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.download,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 20)
        ],
        title: Text(
          "Online Product",
          style: TextStyle(
              letterSpacing: 1,
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                providerF!.pjson();
                Navigator.pushNamed(context, 'pro');
              },
              child: Text(
                "ProductData",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
          ],
        ),
      ),
    ));
  }
}

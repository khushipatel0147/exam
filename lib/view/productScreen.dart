import 'package:exam/modal/productModal.dart';
import 'package:exam/provider/productProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ProductProvider? providerF;
  ProductProvider? providerT;
  TextEditingController? txtsearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<ProductProvider>(context, listen: true);
    providerF = Provider.of<ProductProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            size: 20,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Product Data",
          style: TextStyle(
              letterSpacing: 1,
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 712,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => my(index),
              itemCount: providerT!.productDataModal.data?.length,
            ),
          )
        ],
      ),
    ));
  }

  Widget my(int index) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 1)),
      child: Column(
        children: [
          Text(
            "Title :-",
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 18,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

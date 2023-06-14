import 'package:exam/modal/productModal.dart';
import 'package:exam/utiels/apiHelper.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  ProductDataModal productDataModal = ProductDataModal();
  List<dynamic> dataList = [];

  Future<void> pjson() async {
    productDataModal =await ProductApiHelper.productApiHelper.productjson();
    dataList = productDataModal.data!;
    print(dataList.length);
    notifyListeners();

  }


}

import 'dart:convert';
import 'package:exam/modal/productModal.dart';
import 'package:http/http.dart' as http;

class ProductApiHelper {
  static ProductApiHelper productApiHelper=ProductApiHelper();

  String  link="https://real-time-product-search.p.rapidapi.com/search?q=Nike%20shoes&country=us&language=en";
  ProductDataModal productDataModal=ProductDataModal();
  Future<ProductDataModal> productjson() async {

    var respons = await http.get(Uri.parse(link),headers: {
      "X-RapidAPI-Key":"6f97230f13msh3fdbd52643a9adap18facdjsn2e3fa5540899",
      "X-RapidAPI-Host":"real-time-product-search.p.rapidapi.com"
    });
    String? pjson = respons.body;
    productDataModal= jsonDecode(pjson);
    return productDataModal;
  }


}


import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> product) {
    cart.add(product);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> product) {
  int index = cart.indexWhere((item) => item['id'] == product['id']);
    if (index != -1) {
      cart.removeAt(index);
      notifyListeners();
    }
  }
}

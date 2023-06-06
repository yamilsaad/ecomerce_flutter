import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/models/model.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> _cartItems = [];

  List<CartModel> get cartItems => _cartItems;

  void addToCart(CartModel product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(CartModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  // Otros métodos para manipular el carrito

  // ...
}

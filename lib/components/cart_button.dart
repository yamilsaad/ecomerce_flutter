import 'package:flutter/material.dart';

class CartButton {
  IconButton cartButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, 'carrito');
        },
        icon: Icon(Icons.shopping_cart_outlined));
  }
}

import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/themes/themes.dart';

class CarritoScreen extends StatefulWidget {
  const CarritoScreen({super.key});

  @override
  State<CarritoScreen> createState() => _CarritoScreenState();
}

class _CarritoScreenState extends State<CarritoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
      ),
      body: Container(
        child: Text('Carrito'),
      ),
    );
  }
}

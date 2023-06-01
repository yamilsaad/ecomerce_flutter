import 'package:flutter/material.dart';

class Tienda_Uno extends StatefulWidget {
  const Tienda_Uno({super.key});

  @override
  State<Tienda_Uno> createState() => _Tienda_UnoState();
}

class _Tienda_UnoState extends State<Tienda_Uno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          //agregar articulos con gridView!
          ),
    );
  }
}

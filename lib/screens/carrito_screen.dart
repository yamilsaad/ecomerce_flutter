import 'package:flutter/material.dart';

class CarritoScreen extends StatefulWidget {
  const CarritoScreen({required Key key}) : super(key: key);

  @override
  State<CarritoScreen> createState() => _CarritoScreenState();
}

class _CarritoScreenState extends State<CarritoScreen> {
  List<Item> carritoItems = []; // Declara y define la lista carritoItems
  List<Item> itemsGuardados = []; // Declara y define la lista itemsGuardados

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
      ),
      body: DefaultTabController(
        length: 2, // Número de pestañas
        child: Column(
          children: [
            const SizedBox(height: 15),
            const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Carrito',
                    style: TextStyle(
                      color:
                          Colors.indigo, // Cambia el color del texto a indigo
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Guardados',
                    style: TextStyle(
                      color:
                          Colors.indigo, // Cambia el color del texto a indigo
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ListView.builder(
                        itemCount: carritoItems
                            .length, // Número de elementos en el carrito
                        itemBuilder: (BuildContext context, int index) {
                          final item = carritoItems[
                              index]; // Obtener el artículo actual del carrito
                          return ListTile(
                            title: Text(item.nombre),
                            subtitle: Text(item.precio.toString()),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ListView.builder(
                        itemCount: itemsGuardados
                            .length, // Número de elementos guardados
                        itemBuilder: (BuildContext context, int index) {
                          final item = itemsGuardados[
                              index]; // Obtener el artículo guardado actual
                          return ListTile(
                            title: Text(item.nombre),
                            subtitle: Text(item.precio.toString()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Clase de ejemplo para representar un artículo en el carrito
class Item {
  final String nombre;
  final double precio;

  Item({required this.nombre, required this.precio});
}

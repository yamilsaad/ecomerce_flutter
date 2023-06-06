import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecomerce_flutter/providers/providers.dart';
import 'package:ecomerce_flutter/models/model.dart';

class CarritoScreen extends StatelessWidget {
  final List<CartModel> cartItems;

  const CarritoScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(height: 15),
            const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Carrito',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Guardados',
                    style: TextStyle(
                      color: Colors.indigo,
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
                      child: Consumer<CartProvider>(
                        builder: (context, cartProvider, _) {
                          final cartItems = cartProvider.cartItems;

                          return ListView.builder(
                            itemCount: cartItems.length,
                            itemBuilder: (BuildContext context, int index) {
                              final item = cartItems[index];
                              return ListTile(
                                title: Text(item.productName),
                                subtitle: Text(item.price.toString()),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Guardados'),
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

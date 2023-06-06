import 'package:flutter/material.dart';

import 'screens.dart';

class Product {
  final String title;
  final String imageUrl;
  final double price;

  Product({required this.title, required this.imageUrl, required this.price});
}

class TiendaUno extends StatefulWidget {
  const TiendaUno({super.key});

  @override
  State<TiendaUno> createState() => _TiendaUnoState();
}

class _TiendaUnoState extends State<TiendaUno> {
  final List<Product> products = [
    Product(
      title: 'Producto 1',
      imageUrl:
          'https://d3ugyf2ht6aenh.cloudfront.net/stores/001/171/204/products/680-copia1-9b655d89d8a84b24a415892986855644-480-0.webp',
      price: 10.99,
    ),
    Product(
      title: 'Producto 2',
      imageUrl:
          'https://www.colombraro.com.ar/wp-content/uploads/estanteri%CC%81a-3-Ban%CC%83o-copia.jpg',
      price: 19.99,
    ),
    Product(
      title: 'Producto 3',
      imageUrl:
          'https://http2.mlstatic.com/D_NQ_NP_930777-MLA51634805523_092022-O.jpg',
      price: 19.99,
    ),
    Product(
      title: 'Producto 4',
      imageUrl:
          'https://www.colombraro.com.ar/wp-content/uploads/cesto-ratan-rotulado.jpg',
      price: 19.99,
    ),
    Product(
      title: 'Producto 5',
      imageUrl:
          'https://www.colombraro.com.ar/wp-content/uploads/cesto-ratan-rotulado.jpg',
      price: 19.99,
    ),
    Product(
      title: 'Producto 6',
      imageUrl:
          'https://www.colombraro.com.ar/wp-content/uploads/cesto-ratan-rotulado.jpg',
      price: 19.99,
    ),
    Product(
      title: 'Producto 7',
      imageUrl:
          'https://www.colombraro.com.ar/wp-content/uploads/estanteri%CC%81a-3-Ban%CC%83o-copia.jpg',
      price: 19.99,
    ),
    Product(
      title: 'Producto 8',
      imageUrl:
          'https://www.colombraro.com.ar/wp-content/uploads/estanteri%CC%81a-3-Ban%CC%83o-copia.jpg',
      price: 19.99,
    ),

    // Agrega más productos aquí...
  ];

  List<Product> cartItems = []; // Lista de productos en el carrito

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi tienda'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 3),
              Text(
                'Productos',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            products[index].imageUrl,
                            fit: BoxFit.cover,
                            height: 135.0,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: 10.0, left: 5, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                products[index].title,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6.0),
                              Text(
                                '\$${products[index].price.toStringAsFixed(2)}',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                cartItems.add(products[
                                    index]); // Agrega el producto al carrito
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Producto agregado al carrito'),
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Container(
                                  height: 38,
                                  width: 135,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.indigo,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Ver',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8)
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

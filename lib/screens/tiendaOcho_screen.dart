import 'package:flutter/material.dart';

class Product8 {
  final String title;
  final String imageUrl;
  final double price;

  Product8({required this.title, required this.imageUrl, required this.price});
}

class TiendaOcho extends StatefulWidget {
  const TiendaOcho({super.key});

  @override
  State<TiendaOcho> createState() => _TiendaOchoState();
}

class _TiendaOchoState extends State<TiendaOcho> {
  final List<Product8> products = [
    Product8(
      title: 'Producto 1',
      imageUrl:
          'https://cdn.fragrancenet.com/images/photos/250x250/319286.jpg?format=0',
      price: 10.99,
    ),
    Product8(
      title: 'Producto 2',
      imageUrl:
          'https://dqm4sv5xk0oaj.cloudfront.net/products/42978/large/open-uri20221026-7-1fz8hlt.?1666798155',
      price: 19.99,
    ),
    Product8(
      title: 'Producto 3',
      imageUrl:
          'https://d2r9epyceweg5n.cloudfront.net/stores/001/092/892/products/oneblade1-bae098b355d299ccc016650807183083-640-0.jpg',
      price: 19.99,
    ),
    Product8(
      title: 'Producto 4',
      imageUrl:
          'https://importadoracentral.com.ar/wp-content/uploads/2021/05/LAX-AAL-04.jpg',
      price: 19.99,
    ),

    // Agrega más productos aquí...
  ];

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
                  crossAxisCount:
                      2, // Cambiado a 2 para mostrar en columnas de dos
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
                            height: 150.0,
                            width: double
                                .infinity, // Para ocupar el ancho completo del contenedor
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].title,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                '\$${products[index].price.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
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

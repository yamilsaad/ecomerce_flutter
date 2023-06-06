import 'package:flutter/material.dart';

class Product3 {
  final String title;
  final String imageUrl;
  final double price;

  Product3({required this.title, required this.imageUrl, required this.price});
}

class TiendaTres extends StatefulWidget {
  const TiendaTres({super.key});

  @override
  State<TiendaTres> createState() => _TiendaTresState();
}

class _TiendaTresState extends State<TiendaTres> {
  final List<Product3> products = [
    Product3(
      title: 'Producto 1',
      imageUrl:
          'https://static0.tiendeo.com.ar/images/tiendas/5159/catalogos/296344/paginas/med/00001.jpg',
      price: 10.99,
    ),
    Product3(
      title: 'Producto 2',
      imageUrl:
          'https://www.kvnstatic.com/foto-prod/M58A8033/g/M58A8033_2%20mujer-kevingston.jpg',
      price: 19.99,
    ),
    Product3(
      title: 'Producto 3',
      imageUrl: 'https://www.kvnstatic.com/foto-prod/75431903/g/75431903_1.jpg',
      price: 19.99,
    ),
    Product3(
      title: 'Producto 4',
      imageUrl:
          'https://notilook.com.ar/wp-content/uploads/2019/08/pantalon-engomado-y-cardigan-hilo-mujer-Kevingston-mujer-verano-2020.jpg',
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

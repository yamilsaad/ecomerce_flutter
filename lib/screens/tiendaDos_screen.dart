import 'package:flutter/material.dart';

class Product2 {
  final String title;
  final String imageUrl;
  final double price;

  Product2({required this.title, required this.imageUrl, required this.price});
}

class TiendaDos extends StatefulWidget {
  const TiendaDos({super.key});

  @override
  State<TiendaDos> createState() => _TiendaDosState();
}

class _TiendaDosState extends State<TiendaDos> {
  final List<Product2> products = [
    Product2(
      title: 'Producto 1',
      imageUrl:
          'https://woker.vtexassets.com/arquivos/ids/286728/6GV7613-000-1.jpg?v=637926234609800000',
      price: 10.99,
    ),
    Product2(
      title: 'Producto 2',
      imageUrl:
          'https://nikearprod.vtexassets.com/arquivos/ids/216429-800-800?v=638098360569900000&width=800&height=800&aspect=true',
      price: 19.99,
    ),
    Product2(
      title: 'Producto 3',
      imageUrl:
          'https://deportespaluzzi.com.ar/wp-content/uploads/2021/05/Sin-titulo.png',
      price: 19.99,
    ),
    Product2(
      title: 'Producto 4',
      imageUrl:
          'https://sporting.vtexassets.com/arquivos/ids/745384-800-800?v=638144070712970000&width=800&height=800&aspect=true',
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

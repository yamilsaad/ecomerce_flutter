import 'package:flutter/material.dart';

class Product4 {
  final String title;
  final String imageUrl;
  final double price;

  Product4({required this.title, required this.imageUrl, required this.price});
}

class TiendaCuatro extends StatefulWidget {
  const TiendaCuatro({super.key});

  @override
  State<TiendaCuatro> createState() => _TiendaCuatroState();
}

class _TiendaCuatroState extends State<TiendaCuatro> {
  final List<Product4> products = [
    Product4(
      title: 'Producto 1',
      imageUrl:
          'https://www.tiomusa.com.ar/public/storage/contenidos/2023-03/MrIi96dLfZTXCSkJy7vh6GMdsbrmrLAu2KZf2Xn6.png',
      price: 10.99,
    ),
    Product4(
      title: 'Producto 2',
      imageUrl:
          'https://phantom-telva.unidadeditorial.es/2ff3e3e3c1b8a6be94ffcf19954e9ee0/resize/828/f/jpg/assets/multimedia/imagenes/2022/04/11/16496801978162.jpg',
      price: 19.99,
    ),
    Product4(
      title: 'Producto 3',
      imageUrl:
          'https://www.20minutos.es/files/image_486_366/uploads/imagenes/2023/05/22/lavadora-eeva.jpeg',
      price: 19.99,
    ),
    Product4(
      title: 'Producto 4',
      imageUrl:
          'https://trunet.com.ar/wp-content/uploads/2022/04/hero_intro_endframe__e6khcva4hkeq_large.jpg',
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

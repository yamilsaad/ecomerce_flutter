import 'package:flutter/material.dart';

class ProductVisto {
  final String title;
  final String imageUrl;
  final double price;

  ProductVisto({
    required this.title,
    required this.imageUrl,
    required this.price,
  });
}

class SimilarProducts extends StatefulWidget {
  @override
  State<SimilarProducts> createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  final List<ProductVisto> products_visto = [
    ProductVisto(
      title: 'Producto 1',
      imageUrl:
          'https://www.tiomusa.com.ar/public/storage/contenidos/2023-03/MrIi96dLfZTXCSkJy7vh6GMdsbrmrLAu2KZf2Xn6.png',
      price: 22.09,
    ),
    ProductVisto(
      title: 'Producto 2',
      imageUrl:
          'https://nikearprod.vtexassets.com/arquivos/ids/216429-800-800?v=638098360569900000&width=800&height=800&aspect=true',
      price: 22.09,
    ),
    ProductVisto(
      title: 'Producto 3',
      imageUrl:
          'https://woker.vtexassets.com/arquivos/ids/286728/6GV7613-000-1.jpg?v=637926234609800000',
      price: 50.09,
    ),
    ProductVisto(
      title: 'Producto 4',
      imageUrl:
          'https://sporting.vtexassets.com/arquivos/ids/745384-800-800?v=638144070712970000&width=800&height=800&aspect=true',
      price: 30.09,
    ),
    // Agrega más productos según sea necesario
  ];

  List<ProductVisto> cartItems = []; // Lista de productos en el carrito

  @override
  Widget build(BuildContext context) {
    final Size customSize = Size(150, 200);
    final double customWidth = customSize.width;
    final double customHeight = customSize.height;

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: products_visto.length,
      itemBuilder: (BuildContext context, int index) {
        final product = products_visto[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridTile(
            header: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Oferta!',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            child: Container(
              width: 150,
              height: 200,
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
                      product.imageUrl,
                      fit: BoxFit.cover,
                      height: 130.0,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0, left: 5, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4),
                        Text(
                          product.title,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 23.0,
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          cartItems
                              .add(product); // Agrega el producto al carrito
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Producto agregado al carrito'),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Container(
                            height: 35,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

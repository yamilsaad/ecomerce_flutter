import 'package:flutter/material.dart';

class PrductoReciente {
  final String title;
  final String imageUrl;
  final double price;

  PrductoReciente({
    required this.title,
    required this.imageUrl,
    required this.price,
  });
}

class VistoReciente extends StatefulWidget {
  const VistoReciente({
    Key? key,
  }) : super(key: key);

  @override
  State<VistoReciente> createState() => _VistoRecienteState();
}

class _VistoRecienteState extends State<VistoReciente> {
  final List<PrductoReciente> produc_recient = [
    PrductoReciente(
      title: 'Recient 1',
      imageUrl:
          'https://d3ugyf2ht6aenh.cloudfront.net/stores/001/171/204/products/680-copia1-9b655d89d8a84b24a415892986855644-480-0.webp',
      price: 10.99,
    ),
    PrductoReciente(
      title: 'Recient 2',
      imageUrl:
          'https://trunet.com.ar/wp-content/uploads/2022/04/hero_intro_endframe__e6khcva4hkeq_large.jpg',
      price: 10.99,
    ),
    PrductoReciente(
      title: 'Recient 3',
      imageUrl:
          'https://www.20minutos.es/files/image_486_366/uploads/imagenes/2023/05/22/lavadora-eeva.jpeg',
      price: 10.99,
    ),
    PrductoReciente(
      title: 'Recient 4',
      imageUrl:
          'https://trunet.com.ar/wp-content/uploads/2022/04/hero_intro_endframe__e6khcva4hkeq_large.jpg',
      price: 10.99,
    ),
    PrductoReciente(
      title: 'Recient 5',
      imageUrl:
          'https://d3ugyf2ht6aenh.cloudfront.net/stores/001/171/204/products/680-copia1-9b655d89d8a84b24a415892986855644-480-0.webp',
      price: 10.99,
    ),
    // Agrega más productos aquí según sea necesario
  ];

  List<PrductoReciente> cartItems = []; // Lista de productos en el carrito

  @override
  Widget build(BuildContext context) {
    final Size customSize = Size(150, 200);
    final double customWidth = customSize.width;
    final double customHeight = customSize.height;

    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          SizedBox(width: 10),
          Row(
            children: List.generate(produc_recient.length, (index) {
              final producto = produc_recient[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: customWidth,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        )
                      ]),
                  //color: Colors.amber,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          producto.imageUrl,
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
                              producto.title,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              '\$${producto.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              cartItems.add(
                                  producto); // Agrega el producto al carrito
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
              );
            }),
          )
        ]));
  }
}

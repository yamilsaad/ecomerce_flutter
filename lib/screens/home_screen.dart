import 'package:ecomerce_flutter/components/cart_button.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';
import 'package:ecomerce_flutter/components/components.dart';
import 'package:ecomerce_flutter/themes/themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showSearchField = false;

  @override
  Widget build(BuildContext context) {
    CartButton cartButton = CartButton();

    final _textStyle = const TextStyle(
        color: Colors.black54, fontSize: 14, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  showSearchField = !showSearchField;
                });
              },
              icon: const Icon(
                Icons.search,
                size: 35,
              ),
            ),
          ),
          const Spacer(),
          cartButton
              .cartButton(context), //Carrito de compra. Icono. Usar Provider!
          //const AvatarAppbar(), //Avatar del AppBar
        ],
        bottom: showSearchField
            ? PreferredSize(
                preferredSize: const Size.fromHeight(56.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Buscar...',
                        hintStyle:
                            TextStyle(color: Colors.white.withOpacity(0.7)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                      ),
                      onChanged: (value) {
                        // Lógica de búsqueda según el texto ingresado
                      },
                    ),
                  ),
                ),
              )
            : null,
      ),
      drawer: DrawerWidget(textStyle: _textStyle),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SliderOfertas(), //slider de ofertas.
              SizedBox(height: 10),
              SliderAvatars(), //slider de tipos de articulos.
              SizedBox(height: 10),
              OfertaToday(), //un contenedor con la oferta del día.
              SizedBox(height: 10),
              VistoReciente(), //slider de cards con lo visto mas reciente.
              SizedBox(height: 10),
              SimilarProducts(),
              SizedBox(height: 10),
              OfertaToday(),
              SizedBox(height: 10),
              ContainerPuntos(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

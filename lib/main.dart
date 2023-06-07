import 'package:ecomerce_flutter/screens/screens.dart';
import 'package:ecomerce_flutter/screens/home_screen.dart';
import 'package:ecomerce_flutter/themes/themes.dart';
import 'package:ecomerce_flutter/providers/providers.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: CartProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E comerce',
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeScreen(),
          'carrito': (context) =>
              CarritoScreen(key: UniqueKey(), cartItems: []),
          'tienda_uno': (context) => TiendaUno(key: UniqueKey()),
          'tienda_dos': (context) => TiendaDos(key: UniqueKey()),
          'tienda_tres': (context) => TiendaTres(key: UniqueKey()),
          'tienda_cuatro': (context) => TiendaCuatro(key: UniqueKey()),
          'tienda_cinco': (context) => TiendaCinco(key: UniqueKey()),
          'tienda_seis': (context) => TiendaSeis(key: UniqueKey()),
          'tienda_siete': (context) => TiendaSiete(key: UniqueKey()),
          'tienda_ocho': (context) => TiendaOcho(key: UniqueKey()),
        },
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.system,
      ),
    );
  }
}

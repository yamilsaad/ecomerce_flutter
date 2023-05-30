import 'package:flutter/material.dart';

class ContainerPuntos extends StatelessWidget {
  const ContainerPuntos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,
        height: 450,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: GridTile(
                header: GridTileBar(
                  title: Text('Beneficios Puntos'),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Beneficios puntos')),
                ),
                footer: GridTileBar(
                  subtitle: Text('Consultar'),
                ),
              ),
            ),
            // Agrega más GridTiles según sea necesario
          ],
        ),
      ),
    );
  }
}

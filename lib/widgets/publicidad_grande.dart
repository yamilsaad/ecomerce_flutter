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
          height: 400,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                    'https://vinosypasiones.files.wordpress.com/2021/06/whatsapp-image-2021-06-03-at-09.52.46.jpeg'),
              ),
              Container(),
            ],
          )),
    );
  }
}

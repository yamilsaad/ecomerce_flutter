import 'package:flutter/material.dart';

class SliderOfertas extends StatelessWidget {
  const SliderOfertas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size customSize = Size(400, 200);
    final double customWidth = customSize.width;
    final double customHeight = customSize.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            width: customWidth,
            height: customHeight,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: FadeInImage(
                placeholder: AssetImage('assets/img/usuario_image.png'),
                image: AssetImage('assets/img_tienda1/colomb_ofer.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: customWidth,
            height: customHeight,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: FadeInImage(
                placeholder: AssetImage('assets/img/usuario_image.png'),
                image: AssetImage('assets/img_tienda1/zapatillas_ofer.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}

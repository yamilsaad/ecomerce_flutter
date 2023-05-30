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
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: Card(),
          ),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: Card(),
          ),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: Card(),
          ),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: Card(),
          ),
        ],
      ),
    );
  }
}

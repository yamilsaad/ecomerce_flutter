import 'package:flutter/material.dart';

class VistoReciente extends StatelessWidget {
  const VistoReciente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size customSize = Size(150, 200);
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
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amber),
            child: Card(),
          ),
          SizedBox(width: 10),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amber),
            child: Card(),
          ),
          SizedBox(width: 10),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amber),
            child: Card(),
          ),
          SizedBox(width: 10),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amber),
            child: Card(),
          ),
          SizedBox(width: 10),
          Container(
            width: customWidth,
            height: customHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amber),
            child: Card(),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OfertaToday extends StatelessWidget {
  const OfertaToday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
    );
  }
}

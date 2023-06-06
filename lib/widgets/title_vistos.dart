import 'package:flutter/material.dart';

class SubtitleVistos extends StatelessWidget {
  const SubtitleVistos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Center(
            child: Text(
          'Vistos para vos...',
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}

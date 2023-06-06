import 'package:flutter/material.dart';

class SubtitleRecientes extends StatelessWidget {
  const SubtitleRecientes({
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
          'Tus búsquedas mas recientes...',
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}

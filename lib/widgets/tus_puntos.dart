import 'package:flutter/material.dart';

class TusPuntosContainer extends StatefulWidget {
  const TusPuntosContainer({super.key});

  @override
  State<TusPuntosContainer> createState() => _TusPuntosContainerState();
}

class _TusPuntosContainerState extends State<TusPuntosContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Container(),
              Divider(
                height: 5,
              ),
              Container(),
              Divider(
                height: 5,
              ),
              Container(),
            ],
          )),
    );
  }
}

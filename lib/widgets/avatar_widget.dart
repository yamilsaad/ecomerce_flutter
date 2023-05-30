import 'package:flutter/material.dart';

class AvatarAppbar extends StatelessWidget {
  const AvatarAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: const CircleAvatar(
          maxRadius: 22,
          backgroundColor: Colors.white,
          child: Text(
            'YS',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

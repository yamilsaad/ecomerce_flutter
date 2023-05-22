import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(toolbarHeight: 60, backgroundColor: Colors.indigo, actions: [
        Title(color: Colors.white, child: Text('')),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopify_outlined,
              size: 35,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                )),
            child: CircleAvatar(
              maxRadius: 22,
              backgroundColor: Colors.white,
              child: Text(
                'YS',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        )
      ]),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ajustes'),
              trailing:
                  Expanded(child: Icon(Icons.arrow_drop_down_circle_outlined)),
            )
          ],
        ),
      ),
    );
  }
}

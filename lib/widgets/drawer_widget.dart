import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required TextStyle textStyle,
  }) : _textStyle = textStyle;

  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            HeaderDrawerWidget(),
            //encabezado del drawer
            const Text(
              'Pepe Juan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            //nombre del usuario
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: TextButton(
                  onPressed: () {},
                  child: Text(
                    'My home',
                    style: _textStyle,
                  )),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: TextButton(
                  onPressed: () {},
                  child: Text('Contactar soporte', style: _textStyle)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(Icons.notification_important),
              title: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Notificaciones',
                    style: _textStyle,
                  )),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(Icons.settings_applications),
              title: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ajustes',
                    style: _textStyle,
                  )),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.wallet_giftcard,
                color: Colors.orange[400],
              ),
              title: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Mis puntos',
                    style: _textStyle,
                  )),
              subtitle: const Center(child: Text('3000')),
              subtitleTextStyle: TextStyle(
                  color: Colors.orange[400], fontWeight: FontWeight.w500),
              trailing: Icon(
                Icons.star,
                color: Colors.orange[400],
              ),
            ),
            const Divider(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: Se necesita agregar una imagen al encabezado/ imagen de avatar/ ver dimensiones/ averiguar cómo se le aplica provider para que muestre el avatar del usuario!!!
// ignore: must_be_immutable
class HeaderDrawerWidget extends StatelessWidget {
  CircleAvatar buildProfileAvatar(String imagePath) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(imagePath),
    );
  }

  String profileImagePath =
      'assets/img/dartvader.jpg'; // Ruta de la imagen de Darth Vader
  String placeholderImagePath =
      'assets/img/usuario_image.png'; // Ruta de la imagen de marcador de posición

  HeaderDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: DrawerHeader(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const SizedBox(width: 25),
              CircleAvatar(
                radius: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          placeholderImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          profileImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('juappepe69@google.com')
            ],
          ),
        ),
      ),
    );
  }
}

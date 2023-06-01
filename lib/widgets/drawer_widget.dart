import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:animated_loading_border/animated_loading_border.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Pepe Juan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.indigo),
                ),
              ),
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
              //trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: TextButton(
                  onPressed: () {}, child: Text('Soporte', style: _textStyle)),
              //trailing: const Icon(Icons.arrow_forward_ios),
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
              //trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag_outlined),
              title: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Mis Compras',
                    style: _textStyle,
                  )),
              //trailing: const Icon(Icons.arrow_forward_ios),
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
              //trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.wallet_giftcard,
                color: Colors.green,
              ),
              title: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Mis puntos',
                    style: _textStyle,
                  )),
              subtitle: const Center(
                  child: Text(
                '3000',
                style: TextStyle(color: Colors.green),
              )),
              subtitleTextStyle: TextStyle(
                  color: Colors.green[400], fontWeight: FontWeight.w500),
              //trailing: Icon(Icons.star,color: Colors.orange[400],),
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
              HookBuilder(
                builder: (context) {
                  final isShimmering = useState(true);

                  useEffect(() {
                    // Simulamos un tiempo de espera antes de mostrar la imagen de Darth Vader
                    Future.delayed(Duration(seconds: 1), () {
                      isShimmering.value = false;
                    });
                  }, []);

                  return AnimatedContainer(
                    duration: Duration(milliseconds: 1300),
                    curve: Curves.fastOutSlowIn,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            isShimmering.value ? Colors.indigo! : Colors.green,
                        width: 5,
                      ),
                    ),
                    child: ClipOval(
                      child: Stack(
                        children: [
                          if (isShimmering.value)
                            Shimmer.fromColors(
                              period: Duration(milliseconds: 1500),
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.indigo.shade400!,
                              child: CircleAvatar(
                                radius: 50,
                              ),
                            )
                          else
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(profileImagePath),
                            ),
                        ],
                      ),
                    ),
                  );
                },
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

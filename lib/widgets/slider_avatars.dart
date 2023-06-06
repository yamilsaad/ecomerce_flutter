import 'package:flutter/material.dart';

class SliderAvatars extends StatelessWidget {
  const SliderAvatars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_uno');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/colombraro.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_dos');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/casa2000.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_tres');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/kevingston.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_cuatro');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/musimundo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_cinco');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/king.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_seis');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/farmacity.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_siete');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/samsung.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'tienda_ocho');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              shape: CircleBorder(),
              padding: EdgeInsets.all(2),
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.indigo,
                radius: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/img/cheeky.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}

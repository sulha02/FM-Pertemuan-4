import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Indonesian Beach';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/puncak.jpg',
              ),
              TitleSection(
                  name: 'Puncak Cartenz', location: 'Papua Tengah, Indonesia'),
              ButtonSection(),
              TextSection(
                description:
                    'Puncak Carstensz merupakan salah satu tujuan wisata alam di Papua, '
                    'Indonesia yang telah menarik minat banyak pendaki baik '
                    'dalam maupun luar negeri. Keindahan puncak yang dikenal sebagai '
                    'gunung tertinggi di Indonesia ini, sering kali disandingkan '
                    'dengan gunung-gunung terkenal di dunia seperti Gunung Kilimanjaro '
                    'di Afrika atau Gunung Aconcagua di Amerika Selatan. '
                    'Selain mendaki, masih banyak aktivitas lain yang '
                    'dapat dilakukan di kawasan Puncak Carstensz. Menjelajahi '
                    'Taman Nasional Lorentz yang terletak di sekitarnya, dapat '
                    'menjadi salah satu opsi menarik. Di Taman Nasional Lorentz '
                    'ini terdapat keanekaragaman flora dan fauna, di mana banyak di '
                    'antaranya merupakan spesies endemik, seperti burung cendrawasih, '
                    'kasuari, dan berbagai jenis anggrek hutan tropis.',
              ),
              ImageSection(
                image: 'images/carten.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.verified,
            color: Colors.blue[700],
          ),
          Icon(
            Icons.star,
            color: Colors.red[700],
          ),
          const Text('76K'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.gps_fixed,
            label: 'AROUND',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.settings_cell,
            label: 'PHONE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            titleSection,
            textSection,
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 7.0),
              child: imageSection,
            ),
            buttonSection,
          ],
        ),
      ),
    );
  }
}

Widget imageSection = SizedBox(
    height: 300.0,
    width: 2000.0,
    child: Image.network(
        'https://cdn.pixabay.com/photo/2023/08/15/05/37/lighthouse-8191282_1280.jpg ',
        fit: BoxFit.cover));

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
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

Color color = Colors.blue;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.purple, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.purple, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.purple, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat, purus sit amet congue hendrerit, nisi nibh consequat est, id auctor massa felis sed purus. Nullam feugiat lacinia pulvinar. Donec volutpat consequat leo, at tristique tortor sollicitudin vel. Nulla semper convallis massa hendrerit porta. Donec vel posuere velit, sit amet scelerisque tortor. Ut commodo leo mauris, a ultricies urna tincidunt non. Aenean sed metus ipsum. Nunc consequat dolor ante, at lacinia justo sollicitudin id. Ut sed sem id arcu maximus aliquam eget nec odio. In venenatis fermentum semper.',
    softWrap: true,
  ),
);

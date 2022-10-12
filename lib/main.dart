import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.add_task,
          ),
          title: const Text(
            'Flutter: Primeiros Passos',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.white60,
        body: Column(
          children: const [
            Model(
              [
                Colors.white,
                Colors.pink,
                Colors.blue,
              ],
            ),
            Model(
              [
                Colors.pink,
                Colors.purple,
                Colors.blue,
              ],
            ),
            Model(
              [
                Colors.pink,
                Colors.orange,
                Colors.blue,
              ],
            ),
            Model(
              [
                Colors.purple,
                Colors.white,
                Colors.green,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Model extends StatelessWidget {
  final List<Color> colors;

  const Model(
    this.colors, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10,
      ),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
            color: colors[0],
          ),
          Container(
            height: 150,
            width: 100,
            color: colors[1],
          ),
          Container(
            height: 150,
            width: 100,
            color: colors[2],
          ),
        ],
      ),
    );
  }
}

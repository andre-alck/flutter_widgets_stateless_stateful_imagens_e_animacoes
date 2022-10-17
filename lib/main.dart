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
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: colors[0],
            ),
            height: 150,
            width: 100,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: colors[1],
            ),
            height: 150,
            width: 100,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: colors[2],
            ),
            height: 150,
            width: 100,
          ),
        ],
      ),
    );
  }
}

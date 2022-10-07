import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.pink,
            height: 50.0,
            width: 50.0,
          ),
        ],
      ),
    );
  }
}

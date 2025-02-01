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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.check_circle_outline_outlined, color: Colors.white,),
          title: Text(
            "Flutter: Primeiros Passos",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white70,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Block(
              Colors.white,
              Colors.pinkAccent,
              Colors.cyan,
            ),
            Block(
              Colors.red,
              Colors.purple,
              Colors.blue,
            ),
            Block(
              Colors.pink,
              Colors.yellow,
              Colors.blue,
            ),
            Block(
              Colors.purpleAccent,
              Colors.white,
              Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class Block extends StatelessWidget {
  final Color color1, color2, color3;

  const Block(this.color1, this.color2, this.color3, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: color1,
            width: 110,
            height: 150,
          ),
          Container(
            color: color2,
            width: 110,
            height: 150,
          ),
          Container(
            color: color3,
            width: 110,
            height: 150,
          )
        ],
      ),
    );
  }
}

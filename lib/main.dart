import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ));

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  State<Ball> createState() => _MyappState();
}

class _MyappState extends State<Ball> {
  int ball = 1;
  void ran() {
    setState(() {
      ball = Random().nextInt(5) + 1;
      print('$ball');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: FlatButton(
            onPressed: () {
              ran();
            },
            child: Image.asset(
              'images/ball$ball.png',
              width: 400,
            ),
          ),
        ),
        Text(
          'Press Me',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

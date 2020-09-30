import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainWidget();
  }
}

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  Color mainColor = Colors.white;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: Text('Tap anywhere on the screen'),
            centerTitle: true,
            backgroundColor: Colors.lightGreen,
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              _incrementCounter();
              setState(() {
                mainColor = Color.fromRGBO(Random().nextInt(254) + 1,
                    Random().nextInt(254) + 1, Random().nextInt(254) + 1, 1);
              });
            },
            child: Center(
              child: Text('Hey there', style: TextStyle(fontSize: 34.0)),
            ),
          ),
          bottomSheet:
              Text(_counter.toString(), style: TextStyle(fontSize: 36)),
        ));
  }
}

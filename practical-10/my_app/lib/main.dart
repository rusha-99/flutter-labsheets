
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Features App'),
        ),
        body: Center(
          child: FeatureWidget(),
        ),
      ),
    );
  }
}

class FeatureWidget extends StatefulWidget {
  @override
  _FeatureWidgetState createState() => _FeatureWidgetState();
}

class _FeatureWidgetState extends State<FeatureWidget> {
  String buttonText = "Click me!";
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
      buttonText = "Click me!";
    });
  }

  void _onButtonPressed() {
    setState(() {
      buttonText = "Button Clicked!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Hello, Flutter!",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),
        Image.network(
          'https://picsum.photos/250?image=9', // Replace with your image URL
          width: 200,
          height: 200,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _onButtonPressed,
          child: Text(buttonText),
        ),
        SizedBox(height: 20),
        Text(
          'Counter: $counter',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: Icon(Icons.remove),
            ),
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _resetCounter,
          child: Text('Reset'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_24h/splash_page.dart';

void main() => runApp(new Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter for 24h',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new SplashPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_24h/splash_page.dart';

void main() => runApp(new Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//      statusBarColor: Colors.transparent,
//      statusBarIconBrightness: Brightness.dark,
        ));
    return new MaterialApp(
      title: 'Flutter for 24h',
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryTextTheme: new TextTheme(caption: new TextStyle()),
        primaryColorBrightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      home: new SplashPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_Screen.dart';
import 'input_flutter.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: FlutterInput(),
    );
  }
}

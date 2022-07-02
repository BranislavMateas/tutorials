import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String title = "I Am Poor";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
      appBar: AppBar(
      title: Center(child:Text(title)),
    backgroundColor: Colors.blueGrey[900],
    ),
    body: const Center(
      child: Image(image: AssetImage("images/coal.png")),
    ),
    ),
    );
  }
}

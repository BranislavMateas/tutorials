import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  final List<MaterialColor> xyloColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];

  XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNum) {
    player.play('note$soundNum.wav');
  }

  Widget buildKey(int i) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          playSound(i + 1);
        },
        child: Container(
          color: xyloColors[i],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children:
            List.generate(xyloColors.length, (index) {
              return buildKey(index);
            }),
          ),
        ),
      ),
    );
  }
}

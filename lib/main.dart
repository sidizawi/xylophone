import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded addTextButton(Color color, int n) {
    return Expanded(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)
          ),
          onPressed: () {
            final player = AudioCache();
            player.play("note$n.wav");
          },
          child: Text(""),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addTextButton(Colors.red, 1),
              addTextButton(Colors.orange, 2),
              addTextButton(Colors.yellow, 3),
              addTextButton(Colors.green, 4),
              addTextButton(Colors.teal, 5),
              addTextButton(Colors.blue, 6),
              addTextButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
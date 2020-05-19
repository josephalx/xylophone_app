import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: XylophoneApp(),
        ),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  void snd(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded blt(int sound, var color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          snd(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        blt(1, Colors.purple),
        blt(2, Colors.cyan),
        blt(3, Colors.green),
        blt(4, Colors.yellow),
        blt(5, Colors.orange),
        blt(6, Colors.red),
        blt(7, Colors.grey),
      ],
    );
  }
}

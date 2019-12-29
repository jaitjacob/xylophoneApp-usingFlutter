import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
              child: FlatButton(
                color: color,
                onPressed: () {
                  playSound(soundNumber);
                },
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.blue, soundNumber: 1),
            buildKey(color: Colors.green,soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.pink, soundNumber: 4),
            buildKey(color: Colors.purple,soundNumber: 5),
            buildKey(color: Colors.orange, soundNumber: 6),
          ],
        ),
      )),
    ));
  }
}

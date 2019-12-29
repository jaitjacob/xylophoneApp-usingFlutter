import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
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
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  playSound(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.pink,
                onPressed: () {
                  playSound(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.deepPurple,
                onPressed: () {
                  playSound(6);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  playSound(7);
                },
              ),
            ),
          ],
        ),
      )),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(String soundName){
    final player = AudioPlayer();
    player.play(AssetSource(soundName));
  }

  Expanded buildXylophoneKey({required int soundNumber, required Color keyColor }){
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: () {
          playSound('note$soundNumber.wav');
        },
        child: Container(
          color: keyColor,
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
            children: <Widget>[
              buildXylophoneKey(soundNumber: 1, keyColor: Colors.red ),
              buildXylophoneKey(soundNumber: 2, keyColor: Colors.orange),
              buildXylophoneKey(soundNumber: 3, keyColor: Colors.yellow),
              buildXylophoneKey(soundNumber: 4, keyColor: Colors.green),
              buildXylophoneKey(soundNumber: 5, keyColor: Colors.teal),
              buildXylophoneKey(soundNumber: 6, keyColor: Colors.blue),
              buildXylophoneKey(soundNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

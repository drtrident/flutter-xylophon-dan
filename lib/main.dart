import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(Colors.red, 'note1.wav'),
              createButton(Colors.orange, 'note2.wav'),
              createButton(Colors.yellow, 'note3.wav'),
              createButton(Colors.lightGreen, 'note4.wav'),
              createButton(Colors.green, 'note5.wav'),
              createButton(Colors.blue, 'note6.wav'),
              createButton(Colors.deepPurple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }

  Widget createButton(Color background, String sound) {
    return Expanded(
      child: TextButton(
          onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource(sound));
      },
        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => background)),
      child: const Text(''),
      ),
    );
  }
}

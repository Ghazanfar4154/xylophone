import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void playSound(int n) {
  AudioPlayer().play(AssetSource('note$n.wav'));
}

void main() {
  runApp(XyloPhone());
}

Expanded creatButton(Color color, int s) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(s);
      },
      child: Text("Play Music"),
    ),
  );
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('XyloPhone App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            creatButton(Colors.red, 1),
            creatButton(Colors.deepOrange, 2),
            creatButton(Colors.redAccent, 3),
            creatButton(Colors.deepPurple, 4),
            creatButton(Colors.blue, 5),
            creatButton(Colors.indigo, 6),
            creatButton(Colors.yellow, 7),
          ],
        ),
      ),
    );
  }
}

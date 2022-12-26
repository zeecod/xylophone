import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioPlayer(playerId: 'my_unique_playerId');
    player.play(
      AssetSource('note$x.wav'),
    );
  }

  Widget buildKey({int num, Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound(num);
        },
        child: Text('Click Me! Note $num'),
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                buildKey(color: Colors.brown[300], num: 1),
                buildKey(color: Colors.pink[200], num: 2),
                buildKey(color: Colors.green[200], num: 3),
                buildKey(color: Colors.blue[200], num: 4),
                buildKey(color: Colors.orange[200], num: 5),
                buildKey(color: Colors.grey[300], num: 6),
                buildKey(color: Colors.red[300], num: 7),
              ]),
        ),
      ),
    );
  }
}

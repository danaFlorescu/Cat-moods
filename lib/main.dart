import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      const CatApp(),
    );

class CatApp extends StatelessWidget {
  const CatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD3756B),
        appBar: AppBar(
          title: Text('Choose a cat'),
          backgroundColor: Color(0xffA75D5D),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('angry.wav'),
                      );
                    },
                    child: Image.asset('images/kitekat-13.png'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image.asset('images/kitekat-13.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

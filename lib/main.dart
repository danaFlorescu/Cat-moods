//Illustration by Ekaterina Rogova from Ouch!
//Illustration by Icons 8 from Ouch!

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
        backgroundColor: Color(0xffF0997D),
        appBar: AppBar(
          title: Text('Choose a cat'),
          backgroundColor: Color(0xffA75D5D),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3756B),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('angry.wav'),
                      );
                    },
                    child: Image.asset('images/angry.png'),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFC3A1),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('purring.wav'),
                      );
                    },
                    child: Image.asset('images/purring.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFC3A1),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('figthing.wav'),
                      );
                    },
                    child: Image.asset('images/pisi.png'),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3756B),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('screaming_cat.wav'),
                      );
                    },
                    child: Image.asset('images/satisfied2.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3756B),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('short_meow.wav'),
                      );
                    },
                    child: Image.asset('images/short_meow.png'),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFC3A1),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('surprised.wav'),
                      );
                    },
                    child: Image.asset('images/surprised.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFC3A1),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('upset.wav'),
                      );
                    },
                    child: Image.asset('images/upset.png'),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3756B),
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('cat_food.wav'),
                      );
                    },
                    child: Image.asset('images/cat_food.png'),
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

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
                    child: Image.asset('images/angry.png'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
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
                  child: ElevatedButton(
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
                  child: ElevatedButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('screaming_cat.wav'),
                      );
                    },
                    child: Image.asset('images/screaming_cat.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource('figthing.wav'),
                      );
                    },
                    child: Image.asset('images/figthing.png'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
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
                  child: ElevatedButton(
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
                  child: ElevatedButton(
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

//Illustration by Ekaterina Rogova from Ouch!
//Illustration by Icons 8 from Ouch!

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      const CatApp(),
    );

class CatApp extends StatelessWidget {
  const CatApp({Key? key}) : super(key: key);

  void playSound(String nameOfFile) {
    final player = AudioPlayer();
    player.play(
      AssetSource(nameOfFile),
    );
  }

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
                      playSound('angry.wav');
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
                      playSound('purring.wav');
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
                      playSound('sad.wav');
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
                      playSound('cat_m.mp3');
                    },
                    child: Image.asset('images/catt.png'),
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
                      playSound('short_meow.wav');
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
                      playSound('surprised.wav');
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
                      playSound('upset.wav');
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
                      playSound('cat_food.wav');
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

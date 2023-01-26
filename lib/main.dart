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

  Expanded buildCat(String catMood, Color color) {
    return Expanded(
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound('$catMood.wav');
        },
        child: Image.asset('images/$catMood.png'),
      ),
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
                buildCat('angry', Color(0xFFD3756B)),
                buildCat('purring', Color(0xFFFFC3A1)),
              ],
            ),
            Row(
              children: [
                buildCat('sad', Color(0xFFFFC3A1)),
                buildCat('puzzled', Color(0xFFD3756B)),
              ],
            ),
            Row(
              children: [
                buildCat('short_meow', Color(0xFFD3756B)),
                buildCat('surprised', Color(0xFFFFC3A1)),
              ],
            ),
            Row(
              children: [
                buildCat('upset', Color(0xFFFFC3A1)),
                buildCat('cat_food', Color(0xFFD3756B)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

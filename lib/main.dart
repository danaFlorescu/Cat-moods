//Illustration by Ekaterina Rogova from Ouch!
//Illustration by Icons 8 from Ouch!

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constans.dart';

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
      child: ElevatedButton(
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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  buildCat('angry', kImgColorDark),
                  buildCat('purring', kImgColorLight),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildCat('sad', kImgColorLight),
                  buildCat('puzzled', kImgColorDark),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildCat('short_meow', kImgColorDark),
                  buildCat('surprised', kImgColorLight),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildCat('upset', kImgColorLight),
                  buildCat('cat_food', kImgColorDark),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Illustration by Ekaterina Rogova from Ouch!
//Illustration by Icons 8 from Ouch!

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constans.dart';

void main() => runApp(
      CatApp(),
    );

class CatApp extends StatelessWidget {
  const CatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatAppClass(),
    );
  }
}

class CatAppClass extends StatefulWidget {
  const CatAppClass({Key? key}) : super(key: key);

  @override
  State<CatAppClass> createState() => _CatAppClassState();
}

class _CatAppClassState extends State<CatAppClass> {
  AudioPlayer player = AudioPlayer();

  void playSound(String nameOfFile) {
    player.play(
      AssetSource(nameOfFile),
    );
  }

// 1 - play, 2-stop
  Expanded buildCat(
      {required String catMood,
      required Color color,
      String extension = 'wav'}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound('$catMood.$extension');
        },
        child: Image.asset('images/$catMood.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                buildCat(catMood: 'angry', color: kImgColorDark),
                buildCat(catMood: 'purring', color: kImgColorLight),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildCat(catMood: 'sad', color: kImgColorLight),
                buildCat(
                    catMood: 'puzzled', color: kImgColorDark, extension: 'mp3'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildCat(catMood: 'short_meow', color: kImgColorDark),
                buildCat(catMood: 'surprised', color: kImgColorLight),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildCat(catMood: 'upset', color: kImgColorLight),
                buildCat(catMood: 'cat_food', color: kImgColorDark),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

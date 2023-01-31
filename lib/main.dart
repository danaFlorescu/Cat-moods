//Illustration by Ekaterina Rogova from Ouch!
//Illustration by Icons 8 from Ouch!

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constans.dart';
import 'cat_mood.dart';
import 'moods_list.dart';

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
  @override
  State<CatAppClass> createState() => _CatAppClassState();
}

class _CatAppClassState extends State<CatAppClass> {
  MoodList myMoodList = MoodList();

  AudioPlayer player = AudioPlayer();

  void playSound(String nameOfFile) {
    player.play(
      AssetSource(nameOfFile),
    );
  }

  Expanded buildCat({required CatMood myCatMood}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: myCatMood.color,
        ),
        onPressed: () {
          playSound(myCatMood.catMood + '.' + myCatMood.extension);
        },
        child: Image.asset('images/' + myCatMood.catMood + '.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorApp,
      appBar: AppBar(
        title: Text('Choose a cat'),
        backgroundColor: kBackgroundColorAppBar,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
                buildCat(
                  myCatMood: myMoodList.getCatMood(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

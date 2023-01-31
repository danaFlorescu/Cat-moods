import 'cat_mood.dart';
import 'constans.dart';
import 'package:flutter/material.dart';

class MoodList {
  int _index = 0;

  List<CatMood> _moodList = [
    CatMood(catMood: 'angry', color: kImgColorDark),
    CatMood(catMood: 'purring', color: kImgColorLight),
    CatMood(catMood: 'sad', color: kImgColorLight),
    CatMood(catMood: 'puzzled', extension: 'mp3', color: kImgColorDark),
    CatMood(catMood: 'short_meow', color: kImgColorLight),
    CatMood(catMood: 'surprised', color: kImgColorDark),
    CatMood(catMood: 'upset', color: kImgColorDark),
    CatMood(catMood: 'cat_food', color: kImgColorLight)
  ];

  CatMood getCatMood() {
    return _moodList[_index++];
  }
}

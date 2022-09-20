import 'package:flutter/material.dart';

List<Widget> RatingStars({required int stars, required int rating}){
  List<Widget> starsRating = [];
  int i;
  for(i = 0; i < 5; i++){
    if(i - rating < 0){
      starsRating.add(const Icon(Icons.circle, color: Colors.red, size: 18.0,));
    } else{
      starsRating.add(const Icon(Icons.circle_outlined, color: Colors.red, size: 18.0));
    }
  }
  return starsRating;
}

Widget LanguagesRating(String languageTitle, int score){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          languageTitle,
        ),
        Row(
          children: [
            ...RatingStars(rating: score, stars: 5)
          ],
        ),
        
      ],
    ),
  );
}
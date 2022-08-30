import 'package:flutter/material.dart';

Widget TitleWithBorderBottom(String title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical : 8.0),
        child: Divider(color: Colors.black, height: 3,),
      ),
    ],
  );
}
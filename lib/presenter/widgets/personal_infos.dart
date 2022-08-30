import 'package:flutter/material.dart';

Widget PersonalInfos(String title, String info){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),
        ),
        const SizedBox(height: 5),
        Text(
          info,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
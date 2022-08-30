import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

Widget CustomTimeline(){
  return Column(
    children: [
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
          ),
          Text("15/09/2006")
        ],
      ),
      Container(
        margin: const EdgeInsets.only(left: 5.5),
        alignment: Alignment.bottomLeft,
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: Colors.black)
          )
        ),
        child: Row(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")))
          ],
        ),
      ),
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
          ),
          Text("15/09/2006")
        ],
      ),
    ],
  );
}


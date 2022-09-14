import 'package:cv/presenter/widgets/hability.dart';
import 'package:flutter/material.dart';

Widget LineIconHabilty(Hability hability) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Image(
            image: NetworkImage(hability.icon, scale: 1.0), 
            fit: BoxFit.fill
          ),
        ),
        const SizedBox(width: 15),
        Text(
          hability.name,
          style: const TextStyle(color:  Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

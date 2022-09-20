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
          width: 48,
          height: 48,
          child: Image(
            image: NetworkImage(hability.icon), 
            fit: BoxFit.cover
          ),
        ),
        const SizedBox(width: 15),
        Text(
          hability.name,
        )
      ],
    ),
  );
}

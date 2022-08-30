import 'package:flutter/material.dart';

Widget EducationInfo(String local, String monthYearStart, String monthYearFinish, String name, String title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(children: [
          Text(
            title,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
          const Text(
            ' em ',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
          const Text(' - '),
          Text(
            local,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),  
          ), 
        ],
      ),
      const SizedBox(height: 10),
      Row(children: [
          const Text(
            "Início: ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
          Text(
            monthYearStart,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
          const Text(
            " Fim: ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ), 
          Text(
            monthYearFinish,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
        ],
      )
        
    ],
  );
}
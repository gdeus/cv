import 'package:flutter/material.dart';

Widget CustomListViewBuilder(List<dynamic> list, DynamicT widget){
  return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return widget(list[index]);
  });
}

Widget dynamicT(dynamic){
  return Container();
}

class DynamicT{
  final dynamic teste;

  DynamicT(this.teste);

}
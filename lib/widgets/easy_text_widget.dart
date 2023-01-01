

import 'package:flutter/material.dart';

class EasyTextWidget extends StatelessWidget {

  final String textName;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const EasyTextWidget({Key? key, required this.textName, required this.color, required this.fontSize,required this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

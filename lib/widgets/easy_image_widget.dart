
import 'package:flutter/material.dart';

class EasyImgWidget extends StatelessWidget {

  final String imgName;
  final double posterWidth;
  final double posterHeight;
  final BoxFit boxFit;
  const EasyImgWidget({Key? key,required this.imgName, required this.posterWidth, required this.posterHeight, required this.boxFit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgName,
      width: posterWidth,
      height: posterHeight,
      fit: boxFit,
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';



class CategorieItems extends StatelessWidget {
  const CategorieItems({
    Key? key, @required this.imgSrc,@required this.label,
  }) : super(key: key);
  final imgSrc;
  final label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(imgSrc),height: 20,color: Colors.white,),
          Text(label,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}

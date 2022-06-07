
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.iconSize=30,
    this.textSize=18,
    this.textcolor=Colors.white,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
        icon,
          size: iconSize,
          color: kwhite,
        ),
        Text(
          title,
          style: TextStyle(fontSize:textSize,color: textcolor),
        ),
      ],
    );
  }
}

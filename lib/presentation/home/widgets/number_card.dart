import 'dart:ui';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constatants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
              
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/bDUcthW9hh4kA4XDi4muJk4DJZc.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -20,
          child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: kwhite,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                    fontSize: 140,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              )),
        ),
      ],
    );
  }
}

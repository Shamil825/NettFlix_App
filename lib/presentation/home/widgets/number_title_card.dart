
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv Shows In India Today"),
        kheight,
        LimitedBox(
          maxHeight: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => NumberCard(index: index,)),
          ),
        ),
        kheight,
      ],
    );
  }
}

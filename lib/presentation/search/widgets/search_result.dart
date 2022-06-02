import 'package:flutter/material.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl =    "https://www.themoviedb.org/t/p/w220_and_h330_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & Tv"),
        kheight,
        Expanded(
          child: GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.4,
              shrinkWrap: true,
              children: List.generate(20, (index) {
                return MainCard();
              })),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:const DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}

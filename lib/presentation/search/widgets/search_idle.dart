import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constatants.dart';

const imageUrl =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQht2e-K5iuM99NEe4nnTPs8fUGCbKGPPeqrA&usqp=CAU";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Search",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => TopSearchItemTitle(),
              separatorBuilder: (ctx, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTitle extends StatelessWidget {
  const TopSearchItemTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
      const  Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(
              color: kwhite,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      const  Icon(CupertinoIcons.play_circle,color: Colors.white,size: 50,)
      ],
    );
  }
}

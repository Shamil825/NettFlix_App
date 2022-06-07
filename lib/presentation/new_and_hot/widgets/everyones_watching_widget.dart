
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of works,life and love in 1990s manhattan.",
          style: TextStyle(color: kGreyColor),
        ),
        SizedBox(
          height: 80,
        ),
        video_widget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: "share",
              textSize: 16,
              iconSize: 25,
              textcolor: Colors.grey,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              textSize: 16,
              iconSize: 25,
              textcolor: Colors.grey,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "play",
              textSize: 16,
              iconSize: 25,
              textcolor: Colors.grey,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}

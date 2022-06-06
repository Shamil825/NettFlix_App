
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(icon: Icons.add,title: "My List",),
                PlayButton(),
                CustomButtonWidget(icon: Icons.info, title:"info" )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "FEB",
                  style: TextStyle(
                    fontSize: 16,
                    color: kGreyColor,
                  ),
                ),
                Text(
                  "11",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 450,
            width: size.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                video_widget(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text(
                      "TALL GIRL 2",
                      style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: const [
                        CustomButtonWidget(
                          icon: Icons.add_alert_outlined,
                          title: "Remind Me",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kwidth,
                        CustomButtonWidget(
                          icon: Icons.info_outline,
                          title: "More",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kwidth,
                      ],
                    )
                  ],
                ),
                const Text("Coming On Friday"),
                kheight,
                const Text(
                  "Tall Girl 2",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kheight,
                Text(
                  "Landing the lead in the school musical is a\n dream come true for Jodi,until the pressure\nsends her confidence- and her relationship-\ninto a tailspin.",
                  style: TextStyle(color: kGreyColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

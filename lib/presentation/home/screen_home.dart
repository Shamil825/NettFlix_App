import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';
import 'package:netflix_app/presentation/widgets/main_card_home.dart';

import 'package:netflix_app/presentation/widgets/main_title.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
                    kheight,
                    const MainTitleCard(title: "Released In The Past Year"),
                    kheight,
                    const MainTitleCard(title: "Trending Now"),
                    kheight,
                    const NumberTitleCard(),
                    kheight,
                    const MainTitleCard(title: "Tense Dramas"),
                    kheight,
                    const MainTitleCard(title: "South Indian Cinema"),
                    kheight,
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                      duration: Duration(microseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                               
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.network(
                                    "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                    height: 50,
                                    width: 60,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kwidth,
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.blue,
                                ),
                                kwidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("TV Shows",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),
                                Text("Movies",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold ),  ),
                                Text("Categories",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kBlackColor),
        ),
      ),
    );
  }
}

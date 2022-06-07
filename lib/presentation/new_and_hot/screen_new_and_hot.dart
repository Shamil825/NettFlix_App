import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constatants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/comining_soon_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching_widget.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widgets.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: Text(
                "Hot & New",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
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
              bottom: TabBar(
                unselectedLabelColor: kwhite,
                isScrollable: true,
                indicator:
                    BoxDecoration(color: kwhite, borderRadius: kRadius30),
                labelColor: kBlackColor,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                tabs: [
                  Tab(text: "🍿 Coming Soon"),
                  Tab(
                    text: "👀 Everyone's watching",
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ])),
    );
  }

  _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ComingSoonWidget(),
    );
  }

  _buildEveryonesWatching() {
    return Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => EveryonesWatchingWidget(),
        ));
  }
}

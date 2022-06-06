
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constatants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        
        width: 130,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          image:const DecorationImage(
           fit: BoxFit.cover,
            image: NetworkImage("https://www.themoviedb.org/t/p/w300_and_h450_bestv2/bDUcthW9hh4kA4XDi4muJk4DJZc.jpg"),
          ),
        ),
      ),
    );
  }
}

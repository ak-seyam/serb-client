import 'package:flutter/material.dart';
import 'package:serb/components/SERBcard.dart';
import 'package:serb/components/bottom_title.dart';

class BestMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
        )
      ),
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
          BottomTitle(title: "Best Matches"),
         Container(
           color: Colors.white,
           child: SERBCard(

           ),
         )
       ],
      ),
    );
  }
}

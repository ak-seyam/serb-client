import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:serb/misc/constants.dart';
import '../model/Offer.dart';
import 'package:quartet/quartet.dart';

class SERBCardOffer extends StatelessWidget {
  final Offer offer;

  SERBCardOffer({this.offer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 10.0, offset: Offset(3, 3), color: Color(0x33000000))
      ]),
      child: Row(
        children: <Widget>[
          CardCover(image: offer.book.cover),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titleCase(offer.book.title),
                  style: TextStyle(
                      fontFamily: "playfair",
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Text(
                  offer.book.author,
                  style: TextStyle(fontSize: 10, fontFamily: "playfair"),
                ),
                Text(
                  "${offer.price.getPrice()}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(offer.state),
                Container(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: offer.book.categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(0.0,8.0,8.0,8.0),
                          padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 12) ,
                          decoration: BoxDecoration(
                            color: CYAN,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            offer.book.categories[index],
                            style: TextStyle(color: DARK_BLUE),
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardCover extends StatelessWidget {
  final String image;

  CardCover({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration:
          BoxDecoration(image: DecorationImage(image: NetworkImage(image))),
    );
  }
}

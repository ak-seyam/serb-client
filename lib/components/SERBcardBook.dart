import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:serb/misc/constants.dart';
import '../model/Book.dart';
import 'package:quartet/quartet.dart';

class SERBCardBook extends StatelessWidget {
  final Book book;

  SERBCardBook({this.book});

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
          CardCover(image: book.cover),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titleCase(book.title),
                  style: TextStyle(
                      fontFamily: "playfair",
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Text(
                  book.author,
                  style: TextStyle(fontSize: 10, fontFamily: "playfair"),
                ),
                Container(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: book.categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(0.0,8.0,8.0,8.0),
                          padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 12) ,
                          decoration: BoxDecoration(
                            color: CYAN,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            book.categories[index],
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/SERBcardBook.dart';
import 'package:serb/components/bottom_title.dart';
import '../../model/Book.dart';

class BestMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Book>(
      builder:(context,book,child){
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
                  child: SERBCardBook(
                    book: book, //TODO this will be the search result book
                  ),
                )
              ],
            ),
          );
      },
    );
  }
}

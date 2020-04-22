import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/SERBcardBook.dart';
import 'package:serb/components/bottom_title.dart';
import '../../model/Book.dart';

class BestMatches extends StatefulWidget {
  @override
  _BestMatchesState createState() => _BestMatchesState();
}

class _BestMatchesState extends State<BestMatches> {
  bool expanded = false;
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      setState(() {
                        expanded = !expanded;
                      });
                    } ,child: BottomTitle(title: "Best Matches")),
                AnimatedContainer(
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 200),
                  height: expanded ? 120 : 0,
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

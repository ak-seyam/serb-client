import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/composets/best_matches.dart';
import 'package:serb/components/title_bar.dart';
import '../model/Book.dart';
class AddBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Book(),)
      ],
      child: Scaffold(
        body: Column(
          children: <Widget>[
           TitleBar(title:"Add book"),
            Expanded(
              child: Container(

              ),
            ),
           BestMatches()
          ],
        ),
      ),
    );
  }
}

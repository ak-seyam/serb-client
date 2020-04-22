import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/Dialog.dart';
import 'package:serb/components/composets/add_offer_form.dart';
import 'package:serb/components/composets/best_matches.dart';
import 'package:serb/components/title_bar.dart';
import 'package:serb/model/Book.dart';

class AddOffer extends StatelessWidget {
  const AddOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Book(),
      child: Scaffold(
        body: Column(children: <Widget>[
          TitleBar(title: "Add Offer"),
          Expanded(child: SERBDialog(child: AddOfferForm())),
          BestMatches()
        ]),
      ),
    );
  }
}

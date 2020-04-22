import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/Dialog.dart';
import 'package:serb/components/composets/add_offer_form.dart';
import 'package:serb/components/composets/best_matches.dart';
import 'package:serb/components/title_bar.dart';
import 'package:serb/model/Book.dart';
import 'package:serb/model/PhotoPathModel.dart';

class AddOffer extends StatelessWidget {
  final CameraDescription camera;

  const AddOffer({Key key, @required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider<Book>(
            create: (context) => Book(),),
      ],
        child: Scaffold(
          body: Column(children: <Widget>[
            TitleBar(title: "Add Offer"),
            Expanded(
                child: SERBDialog(
                    child: AddOfferForm(
              camera: camera,
            ))),
            BestMatches()
          ]),
        ),
    );
  }
}

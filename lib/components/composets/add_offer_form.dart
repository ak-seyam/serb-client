import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/Button.dart';
import 'package:serb/components/SERBInputDecoration.dart';
import 'package:serb/model/Book.dart';
import 'package:serb/model/PhotoPathModel.dart';
import 'package:serb/model/price.dart';
import 'package:serb/samples/offerSamples.dart';
import 'package:serb/screens/take_photo.dart';
import 'package:serb/utils/uploader.dart';

class AddOfferForm extends StatefulWidget {
  final CameraDescription camera;
  const AddOfferForm({Key key, @required this.camera}) : super(key: key);

  @override
  _AddOffer createState() => _AddOffer();
}

enum OfferType { sell, exchange, rent }

class _AddOffer extends State<AddOfferForm> {
  var _formKey = GlobalKey<FormState>();
  var dropDownValue = "/Day";
  bool rent = false;
  var _offerType = OfferType.sell;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                decoration: SERBInputDecoration(inputLabel: "Title"),
                onEditingComplete: () {
                  //TODO search with the value of that field instead i will do that now
                  Provider.of<Book>(context, listen: false)
                      .setFromBookAndNotify(book: listOfOffers[0].book);
                },
              ),
              Row(
                children: <Widget>[
                  Radio(
                      value: OfferType.sell,
                      groupValue: _offerType,
                      onChanged: (value) {
                        _offerType = value;
                        rent = false;
                        setState(() {});
                      }),
                  Text("Sell"),
                  Radio(
                      value: OfferType.rent,
                      groupValue: _offerType,
                      onChanged: (value) {
                        _offerType = value;
                        rent = true;
                        setState(() {});
                      }),
                  Text("Rent"),
                  Radio(
                      value: OfferType.exchange,
                      groupValue: _offerType,
                      onChanged: (value) {
                        _offerType = value;
                        rent = false;
                        setState(() {});
                      }),
                  Text("Exchange"),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Price"),
                      keyboardType: TextInputType.numberWithOptions(
                          signed: false, decimal: true),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'please enter a price';
                        }
                        if (int.parse(value) < 0) {
                          return "insert a positive number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: rent ? 1.0 : 0.0,
                      child: AbsorbPointer(
                        absorbing: !rent,
                        child: DropdownButton(
                            isExpanded: true,
                            value: dropDownValue,
                            items: DurationsMap.values.map((e) {
                              return DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (e) {
                              setState(() {
                                dropDownValue = e;
                              });
                            }),
                      ),
                    ),
                  ),
                ],
              ),
              SERBButton(
                  text: "Add state image",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TakePhoto(camera: widget.camera)));
                  }),
              Consumer<PhotoPathModel>(builder: (context, path, child) {
                if (path.path != null) {
                  return Image.file(File(path.path));
                }
                return Container();
              }),
              SERBButton(
                  text: "Submit",
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Uploading..."),
                      ));
                      await upload(
                          "http://192.168.1.8:5000/",
                          Provider.of<PhotoPathModel>(context, listen: false)
                              .path);
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text("Done.")));
                    }
                  })
            ],
          ),
        ));
  }
}

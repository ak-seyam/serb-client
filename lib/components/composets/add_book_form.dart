import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/Button.dart';
import 'package:serb/components/SERBInputDecoration.dart';
import 'package:serb/model/Book.dart';
import 'package:serb/model/Offer.dart';
import 'package:serb/samples/offerSamples.dart';
class AddBookForm extends StatefulWidget {
  @override
  _AddBookFormState createState() => _AddBookFormState();
}

class _AddBookFormState extends State<AddBookForm> {
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: SERBInputDecoration(inputLabel: "Book's ISBN"),
              onEditingComplete: (){
                //TODO do a search and update providers's book with the result
                // here i'm just changing the book instance change that later
                Book book = listOfOffers[0].book;
                // for my future self: you will leave this as it is
                Provider.of<Book>(context,listen: false).setFromBookAndNotify(book: book);
              },
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: SERBInputDecoration(inputLabel: "Book's title"),
              validator: (value){
                if (value.isEmpty){
                  return 'please enter the title';
                }
                return null;
              },
              onEditingComplete: (){
                //TODO do a search and update providers's book with the result
                // here i'm just changing the book instance change that later
                Book book = listOfOffers[1].book;
                // for my future self: you will leave this as it is
                Provider.of<Book>(context,listen: false).setFromBookAndNotify(book: book);
              },
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: SERBInputDecoration(inputLabel: "Author"),
              validator: (value){
                if (value.isEmpty){
                  return 'please enter the title';
                }
                return null;
              },
              onEditingComplete: (){
                //TODO do a search and update providers's book with the result
                // here i'm just changing the book instance change that later
                Book book = listOfOffers[3].book;
                // for my future self: you will leave this as it is
                Provider.of<Book>(context,listen: false).setFromBookAndNotify(book: book);
              },
            ),
            SERBButton(
              text: "Upload cover",
              onTap: (){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("uploading"),));
              },
            ),
            SERBButton(
              text: "Submit",
              onTap: (){
                if(_fromKey.currentState.validate()){
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("processing data..."),));
                  sleep(Duration(milliseconds: 500));
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}


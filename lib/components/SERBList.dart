import 'package:flutter/cupertino.dart';
import 'package:serb/components/SERBcard.dart';
import '../model/Offer.dart';

getAListOfCards(BuildContext context,List<Offer> offers){
  return ListView.builder(itemCount: offers.length,itemBuilder: (context,index){
    return SERBCard(offer: offers[index],);
  });
}
import 'package:flutter/cupertino.dart';
import 'package:serb/components/SERBcardOffer.dart';
import '../model/Offer.dart';

getAListOfCards(BuildContext context,List<Offer> offers){
  return ListView.builder(itemCount: offers.length,itemBuilder: (context,index){
    return SERBCardOffer(offer: offers[index],);
  });
}
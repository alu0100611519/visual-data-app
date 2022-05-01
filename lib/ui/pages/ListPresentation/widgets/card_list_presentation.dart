

import 'package:flutter/material.dart';

import 'card_presentation_item.dart';

/// Clase que construye la lista de widgets de los graficos
/// que tiene creado el usuario.
class CardListPresentation extends StatelessWidget {
  const CardListPresentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0, right: 15.0, bottom: 45.0),
      child: Expanded(
        child:
          ListView(
          scrollDirection: Axis.vertical,
          children: const [
            CardPresentationItem(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "8 min away"),
            CardPresentationItem(
                "Italian ",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Restaurant%20Image.png?alt=media&token=43509b4c-269e-4279-8c88-36dc9ed27a66",
                "12 min away"),
            CardPresentationItem(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "15 min away"),
            CardPresentationItem(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "8 min away"),
            CardPresentationItem(
                "Italian ",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Restaurant%20Image.png?alt=media&token=43509b4c-269e-4279-8c88-36dc9ed27a66",
                "12 min away"),
            CardPresentationItem(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "15 min away"),
          ],
        ),
      ),
    );
  }
}
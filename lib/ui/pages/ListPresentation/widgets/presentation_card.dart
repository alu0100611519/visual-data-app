import 'package:flutter/material.dart';

///componente card de la presentation
///es el item customizado de la lista de items
///que tiene la pagina LisPresentationCard.
class PresentationCard extends StatelessWidget {
  const PresentationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //navega hacia la pagina del detalle.
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
                        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "name"
                ),
                Text(
                  "username"
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ]),
      ),
    );
  }
}

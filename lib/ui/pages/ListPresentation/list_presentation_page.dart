import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/card_list_presentation.dart';

class ListPresentationPage extends StatelessWidget {
  const ListPresentationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'List Presentation Page'), // aqui irá el titulo de la presentation.
      ),
      backgroundColor: const Color.fromARGB(255, 239, 239,239), // se puede hacer un estado para añadir el tema oscuro o claro.
      body: const CardListPresentation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("esto es boton extended"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.add,size: 20,), FaIcon(FontAwesomeIcons.chartColumn, size: 20,)],
        ),
      ),
    );
  }
}

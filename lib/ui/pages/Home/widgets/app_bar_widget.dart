import 'package:flutter/material.dart';

import '../../constant.dart';


class AppBarWidget extends StatefulWidget {
  //final TextEditingController controller;
  const AppBarWidget({
    required Key key,
    //required this.controller, de momento no tenemos textController porque era para el buscador.
  }) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  //final TextEditingController textController;

  _AppBarWidgetState(
    //this.textController
    );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              color: Constants.blueDark,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    iconSize: 30,
                    color: Colors.white,
                    icon: const Icon(Icons.menu),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(Constants.kPadding),
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Constants.yellowDak,
                      radius: 20,
                      child: Image.asset("lib/image/mockImage.png"),
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}

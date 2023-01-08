import 'package:flutter/material.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';

import '../../constant.dart';

class ListTileHome extends StatefulWidget {
  final VisualModel visualModel;
  const ListTileHome({required Key key, required this.visualModel}) : super(key: key);

  @override
  State<ListTileHome> createState() => _ListTileHomeState();
}

class _ListTileHomeState extends State<ListTileHome> {

  _ListTileHomeState();

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(
              left: Constants.kPadding /4,
              right: Constants.kPadding /4,
              top: Constants.kPadding / 4),
          child: Card(
            color: Constants.bluelight,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              width: double.infinity,
              child:  ListTile(
                onTap: (){print("On Tap");},
                leading: IconButton(
                  onPressed: (){print("esto es leading");},
                  icon: const Icon(Icons.label),),
                title: Text(
                  widget.visualModel.name,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  widget.visualModel.description,
                  style: const TextStyle(color: Colors.white),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                    onPressed: (){print("favorite");},
                    icon: const Icon(Icons.favorite_border_outlined)
                    ),
                    IconButton(
                    onPressed: (){ print("Delete");},
                    icon: const Icon(Icons.delete)
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}


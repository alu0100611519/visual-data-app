import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';
import 'package:visual_data_app/ui/pages/Home/bloc/home_bloc.dart';
import 'package:visual_data_app/ui/pages/Home/widgets/bottom_nav_bar.dart';

import '../bloc/home_state.dart';
import 'list_tile_home.dart';

/*
  Mock Data
*/

List<VisualModel> lista = [
  VisualModel(
    id: 0,
    name: "visual model 1",
    description: "descripticion 1",
    fields: []
    ),
  VisualModel(
    id: 1,
    name: "visual model 2",
    description: "descripticion 2",
    fields: []
    ),
    VisualModel(
    id: 2,
    name: "visual model 3",
    description: "descripticion 3",
    fields: []
    ),
  VisualModel(
    id: 3,
    name: "visual model 4",
    description: "descripticion 4",
    fields: []
    ),
  VisualModel(
    id: 4,
    name: "visual model 5",
    description: "descripticion 5",
    fields: []
    ),
];

class PanelCenterHome extends StatefulWidget {
  const PanelCenterHome({required Key key}) : super(key: key);

  @override
  State<PanelCenterHome> createState() => _PanelCenterHomeState();
}

class _PanelCenterHomeState extends State<PanelCenterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is InitVisualModelState) {
          return const Text("ESTA Iniciado.....");
        }else if (state is LoadingVisualModelState){
            return const Text("ESTA Cargando.....");
        } else if (state is LoadedVisualModelState) {
          return ListView.builder(
            itemCount: state.listPresentation.length,
            itemBuilder: (context, index) => ListTileHome(
              key: Key("""
            List tile Home nº: ${lista[index].id.toString()}"""),
              visualModel: lista[index],
            ),
          );
        }else{
          return const Text("entro por el else");
        }
      }),
      bottomNavigationBar: const BottomNavBar(
        key: Key("BottomNavBarHome"),
      ),
    );
  }
}

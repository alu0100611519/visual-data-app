import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visual_data_app/domain/entities/presentation.dart';
import 'package:visual_data_app/ui/pages/Home/bloc/home_bloc.dart';
import 'package:visual_data_app/ui/pages/Home/widgets/bottom_nav_bar.dart';

import '../bloc/home_state.dart';
import 'list_tile_home.dart';

/*
  Mock Data
*/

List<Presentation> lista = [
  Presentation(
      title: "Ventas Semanales",
      description: "ventas semanales de ropa",
      idPesentation: 1),
  Presentation(
      title: "Ventas Anuales",
      description: "Ventas Anuales de ropa",
      idPesentation: 2),
  Presentation(
      title: "Probabilidad cancer de mama",
      description: "estudio estadistico basado en el riesgo de cancer de mama",
      idPesentation: 3),
  Presentation(
      title: "Subenciones a los organismos publicos Pais vasco",
      description: "donaciones y subvenciones...",
      idPesentation: 4),
  Presentation(
      title: "Estos son datos mockeados",
      description: "recuerda que hay que generar el tipo de datos necesarios.",
      idPesentation: 5),
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
        if (state is InitPresentationState) {
          return const Text("ESTA Iniciado.....");
        }else if (state is LoadingPresentationState){
            return const Text("ESTA Cargando.....");
        } else if (state is LoadedPresentationState) {
          return ListView.builder(
            itemCount: state.listPresentation.length,
            itemBuilder: (context, index) => ListTileHome(
              key: Key("""
            List tile Home nº: ${lista[index].idPesentation.toString()}"""),
              presentation: lista[index],
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

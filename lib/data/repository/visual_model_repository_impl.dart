


import 'package:flutter/cupertino.dart';
import 'package:visual_data_app/data/datasource/local/local.dart';
import 'package:visual_data_app/data/entities/visual_model_dto.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';
import 'package:visual_data_app/domain/repository/visual_model_repository.dart';


/// Implementation repository.
class VisualModelRepositoryImpl extends VisualModelRepository{

  final Local _local;
  //final Remote _remote;

  VisualModelRepositoryImpl(this._local);

  @override
  Future<void> addVisualModel(VisualModel visualModel) async {
    VisualModelDTO result = VisualModelDTO.toDto(visualModel);
    _local.addModel(result);
  }

  @override
  Future<void> deletePresentation(int id) async {
    _local.deleteModel(id);
  }

  @override
  List<VisualModel> getModels() {
    List<VisualModel> result = [];
    Future<List<VisualModelDTO>> models = _local.getModels();

    models.then((value) => {
      result = value.map((e) => e.toEntity()).toList()
      }).catchError((err){
        print('ERROR EN EL FUTURE: $err');
      });

    return result;

  }

}
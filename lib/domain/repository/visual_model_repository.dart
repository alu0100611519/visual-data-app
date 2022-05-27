


import 'package:visual_data_app/data/entities/visual_model_dto.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';

abstract class VisualModelRepository{

  List<VisualModel> getModels();
  Future<void> addVisualModel(VisualModel visualModel);
  Future<void> deletePresentation(int id);
}




import '../../model/visual_model_dto.dart';

abstract class Local{
  //obtain full models of the aplication
  Future<List<VisualModelDTO>> getModels();

  Future<void> addModel(VisualModelDTO visualModel);

  Future<void> deleteModel(int id);
}
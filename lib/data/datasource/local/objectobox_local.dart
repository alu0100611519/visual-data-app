


import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/data/model/visual_model_dto.dart';

import 'local.dart';

class ObjectBoxLocal extends Local{

  final Store _store;
  //VisualModelDAO _visualModelDao;

  ObjectBoxLocal(this._store){
    //_visualModelDao = VisualModelDao(_store);
  }

  @override
  Future<void> addModel(VisualModelDTO visualModel) async {
    final box = _store.box<VisualModelDTO>();
    final name = visualModel.name;
    final id = box.put(visualModel);
    print("el modelo ${name} se ha guardado con el id = ${id}");
  }

  @override
  Future<void> deleteModel(int id) async {
    final box = _store.box<VisualModelDTO>();
    box.remove(id);
  }

  @override
  Future<List<VisualModelDTO>> getModels() async {
    final box = _store.box<VisualModelDTO>();
    List<VisualModelDTO> result = box.getAll();
    return result;
  }

}
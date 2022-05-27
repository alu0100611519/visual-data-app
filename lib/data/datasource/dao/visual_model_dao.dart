


import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/data/entities/visual_model_dto.dart';

class VisualModelDao{
  final Store _store;
  late Box _box;

  VisualModelDao(this._store){
    _box = _store.box<VisualModelDTO>();
  }

  Future<int> insert(VisualModelDTO visualModel)async {
      return _box.put(visualModel);
  }

  Future<void> remove(int id)async {
    if(_box.contains(id)){
      _box.remove(id);
    }
  }

  Future<List<VisualModelDTO>> getModels() async{
    List<VisualModelDTO> result = _box.getAll().cast<VisualModelDTO>();
    return result;
  }

}



import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/data/entities/visual_model_dto.dart';



import '../dao/visual_model_dao.dart';
import 'local.dart';

class ObjectBoxLocal extends Local {

  final Store _store;
  late VisualModelDao _visualModelDao;

  ObjectBoxLocal(this._store) {
    _visualModelDao = VisualModelDao(_store);
  }


  @override
  Future<void> addModel(VisualModelDTO visualModel) async {
    final id  = _visualModelDao.insert(visualModel);
    print("el modelo ${visualModel.name} se ha guardado con el id = ${id}");
  }

  @override
  Future<void> deleteModel(int id) async {
    _visualModelDao.remove(id);
  }

  @override
  Future<List<VisualModelDTO>> getModels() async {
    return _visualModelDao.getModels();
  }

}

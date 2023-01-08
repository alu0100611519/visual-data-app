import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../data/datasource/local/local.dart';
import '../data/datasource/local/objectobox_local.dart';
import '../data/datasource/utilidades_db.dart';
import '../data/repository/visual_model_repository_impl.dart';
import '../domain/repository/visual_model_repository.dart';

final getIt = GetIt.I;

Future<void> initializeDI() async {
  _data();
  _domain();
  _view();
}

///fragmento de inicializacion de la store data. registramos los repositoriy e inicializamos las bd.
void _data() async {
  //instance the new database.
  final _db = await initStoreObjectBox();
  getIt.registerSingleton<Local>(ObjectBoxLocal(_db));
  getIt.registerSingleton<VisualModelRepository>(
      VisualModelRepositoryImpl(getIt.get()));
}

initStoreObjectBox() {
  getApplicationDocumentsDirectory().then((dir) {});
}

/// parte de inicializacion de casos de uso.
void _domain() async {}

///parte de injectar las dependencias de las vistas.
void _view() async {}

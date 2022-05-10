

import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

Future<void> initializeDI() async {
  _data();
  _domain();
  _view();
}


///fragmento de inicializacion de la store data. registramos los repositoriy e inicializamos las bd.
void _data() async{
  print("Inicializando data");

}

/// parte de inicializacion de casos de uso.
void _domain() async {

}

///parte de injectar las dependencias de las vistas.
void _view() async {
}
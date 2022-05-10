

import 'package:objectbox/objectbox.dart';

import 'visual_field_model_dto.dart';

@Entity()
class VisualModelDTO{

  int id;
  String name; // nombre de la tabla o base del conocimiento..

  @Backlink('vm')
  final fields = ToMany<VisualFieldModelDTO>();

  VisualModelDTO({
  this.id = 0,
  required this.name,
  });
}
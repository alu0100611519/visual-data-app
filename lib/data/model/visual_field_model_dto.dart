
import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/data/model/visual_model_dto.dart';

import 'visual_row_model_dto.dart';

/// Clase visual que representa las cabeceras de la base del conocimiento.
///
@Entity()
class VisualFieldModelDTO {

  int id;
  String field;

  final vm = ToOne<VisualModelDTO>();

  @Backlink('field')
  final row = ToMany<VisualRowModelDTO>();

  VisualFieldModelDTO({
    this.id = 0,
    required this.field
  });
}
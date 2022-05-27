
import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/domain/model/visual_field_model.dart';

import 'visual_model_dto.dart';
import 'visual_row_model_dto.dart';

/// Clase visual que representa las cabeceras de la base del conocimiento.
///

@Entity()
class VisualFieldModelDTO {

  int id;
  String namefield;

  final vm = ToOne<VisualModelDTO>();

  @Backlink('field')
  final rows = ToMany<VisualRowModelDTO>();

  VisualFieldModelDTO({
    this.id = 0,
    required this.namefield
  });

  VisualFieldModel toEntity() {
    VisualFieldModel result = VisualFieldModel(
      id: id,
      namefield:  namefield,
      rows: rows.map((element) => element.toEntity()).toList());
    return result;
  }

  static VisualFieldModelDTO toDto(VisualFieldModel e) {
    VisualFieldModelDTO result = VisualFieldModelDTO(namefield: e.namefield);
    result.rows.addAll(e.rows.map((row) => VisualRowModelDTO.toDto(row)));
    return result;
  }


}

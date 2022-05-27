
import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/domain/model/visual_row_model.dart';

import 'visual_field_model_dto.dart';





/// Class row model. represent the value and the position in the row model.
@Entity()
class VisualRowModelDTO {

  int id;
  final int position;
  final String value;

  final field = ToOne<VisualFieldModelDTO>();

  VisualRowModelDTO({
    this.id = 0,
    required this.position,
    required this.value,
  });

  VisualRowModel toEntity() {
    VisualRowModel result = VisualRowModel(id:id ,value: value,position: position);
    return result;
  }

  static VisualRowModelDTO toDto(VisualRowModel row) {
    return VisualRowModelDTO(value: row.value, position: row.position);
  }

}


import 'package:objectbox/objectbox.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';

import 'visual_field_model_dto.dart';

@Entity()
class VisualModelDTO{

  int id;
  String name; // nombre de la tabla o base del conocimiento..
  String description;

  @Backlink('vm')
  final fields = ToMany<VisualFieldModelDTO>();

  VisualModelDTO({
  this.id = 0,
  required this.name,
  required this.description,
  });

  VisualModel toEntity() {
    VisualModel result = VisualModel(
      id: id,
      name: name,
      description: description,
      fields: fields.map((element) => element.toEntity()).toList()
      );

      return result;
  }

  static VisualModelDTO toDto(VisualModel visualModel) {
    VisualModelDTO result = VisualModelDTO(name: visualModel.name, description: visualModel.description);
    result.fields.addAll(visualModel.fields.map((e) => VisualFieldModelDTO.toDto(e)).toList());
    return result;
  }
}
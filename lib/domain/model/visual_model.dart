
import 'package:visual_data_app/data/entities/visual_model_dto.dart';

import 'visual_field_model.dart';

class VisualModel {

  int id;
  String name; // nombre de la tabla o base del conocimiento..
  String description;
  List<VisualFieldModel> fields;

  VisualModel({
    required this.id,
    required this.name,
    required this.description,
    required this.fields,
  });

  factory VisualModel.fromDTO(VisualModelDTO dto){
    return VisualModel(
      id: dto.id,
      name: dto.name,
      description: dto.description,
      fields: dto.fields.map((element) => VisualFieldModel.fromDTO(element)).toList());
  }


}



import 'package:visual_data_app/data/entities/visual_field_model_dto.dart';
import 'package:visual_data_app/domain/model/visual_row_model.dart';

class VisualFieldModel {

  int? id;
  final String namefield;
  final List<VisualRowModel> rows;

  VisualFieldModel({
    this.id,
    required this.namefield,
    required this.rows
  });

  factory VisualFieldModel.fromDTO(VisualFieldModelDTO dto){
    return VisualFieldModel(
      id: dto.id,
      namefield: dto.namefield,
      rows: dto.rows.map((element) => VisualRowModel.fromDTO(element)).toList());
  }


}
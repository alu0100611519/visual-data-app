




import 'package:visual_data_app/data/entities/visual_row_model_dto.dart';

/// Class row model. represent the value and the position in the row model.
class VisualRowModel {

  late int id;
  final int position;
  final String value;


  VisualRowModel({
    required this.id,
    required this.position,
    required this.value,
  });

  factory VisualRowModel.fromDTO(VisualRowModelDTO dto) {
    return VisualRowModel(
      id: dto.id,
      position: dto.position,
      value: dto.value,
      );
  }



}

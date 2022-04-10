/*
Modelo de datos que se persisten en la base de datos.
El modelo tiene que estar compuesto por dos
 */


class Presentation {
  final int idPesentation;
  final String title;
  final String description;
  //final String indexName;
  //final String valueOneName;
  //final String valueTwoName;
  //final String dateName;
  //final List<DetailPresentation> detailPresentation;

  Presentation({required this.idPesentation, required this.title, required this.description}
  //this.indexName, this.valueOneName, this.valueTwoName, this.dateName,
  //this.detailPresentation
  );

  /*
  factory Presentation.fromDTO(PresentationDTO dto) {
    return Presentation(dto.idPresentationDto, dto.title, dto.description,dto.indexName,dto.valueOneName,dto.valueTwoName,dto.dateName, dto.arrayDetailPresentationToEntity());
  }

  PresentationDTO toDto() {
    return PresentationDTO(
        idPresentationDto: idPesentation,
        title: title,
        description: description,
        indexName: indexName,
        valueOneName: valueOneName,
        valueTwoName: valueTwoName,
        dateName: dateName,
        detailPresentationDto: arrayDetailPresentationEntity2Dto());
  }


    metodo auxiliar.

  List<DetailPresentationDTO> arrayDetailPresentationEntity2Dto() {
    List<DetailPresentationDTO> result = [];
    if(this.detailPresentation != null) {
      for(int i = 0; i < detailPresentation.length ; i++){
        result.add(detailPresentation[i].toDto());
      }
    }
    return result;
  }*/
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'data/entities/visual_field_model_dto.dart';
import 'data/entities/visual_model_dto.dart';
import 'data/entities/visual_row_model_dto.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 5321988053989769155),
      name: 'VisualModelDTO',
      lastPropertyId: const IdUid(3, 1612216773946605970),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2559122248202570471),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3361507230653348119),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1612216773946605970),
            name: 'description',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(
            name: 'fields', srcEntity: 'VisualFieldModelDTO', srcField: 'vm')
      ]),
  ModelEntity(
      id: const IdUid(2, 1484534787538846826),
      name: 'VisualFieldModelDTO',
      lastPropertyId: const IdUid(4, 1398872599880322678),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8472471573040869400),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(3, 8902032290903877431),
            name: 'vmId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 55289577629771933),
            relationTarget: 'VisualModelDTO'),
        ModelProperty(
            id: const IdUid(4, 1398872599880322678),
            name: 'namefield',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(
            name: 'rows', srcEntity: 'VisualRowModelDTO', srcField: 'field')
      ]),
  ModelEntity(
      id: const IdUid(3, 7215389886977720942),
      name: 'VisualRowModelDTO',
      lastPropertyId: const IdUid(4, 9014583285663182407),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2168445789377880442),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6110551577873223920),
            name: 'position',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3113842489720527000),
            name: 'fieldId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 4020722349384410135),
            relationTarget: 'VisualFieldModelDTO'),
        ModelProperty(
            id: const IdUid(4, 9014583285663182407),
            name: 'value',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 7215389886977720942),
      lastIndexId: const IdUid(2, 4020722349384410135),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [2970682281116767961],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    VisualModelDTO: EntityDefinition<VisualModelDTO>(
        model: _entities[0],
        toOneRelations: (VisualModelDTO object) => [],
        toManyRelations: (VisualModelDTO object) => {
              RelInfo<VisualFieldModelDTO>.toOneBacklink(3, object.id,
                      (VisualFieldModelDTO srcObject) => srcObject.vm):
                  object.fields
            },
        getId: (VisualModelDTO object) => object.id,
        setId: (VisualModelDTO object, int id) {
          object.id = id;
        },
        objectToFB: (VisualModelDTO object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final descriptionOffset = fbb.writeString(object.description);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, descriptionOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = VisualModelDTO(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              description: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''));
          InternalToManyAccess.setRelInfo(
              object.fields,
              store,
              RelInfo<VisualFieldModelDTO>.toOneBacklink(3, object.id,
                  (VisualFieldModelDTO srcObject) => srcObject.vm),
              store.box<VisualModelDTO>());
          return object;
        }),
    VisualFieldModelDTO: EntityDefinition<VisualFieldModelDTO>(
        model: _entities[1],
        toOneRelations: (VisualFieldModelDTO object) => [object.vm],
        toManyRelations: (VisualFieldModelDTO object) => {
              RelInfo<VisualRowModelDTO>.toOneBacklink(3, object.id,
                  (VisualRowModelDTO srcObject) => srcObject.field): object.rows
            },
        getId: (VisualFieldModelDTO object) => object.id,
        setId: (VisualFieldModelDTO object, int id) {
          object.id = id;
        },
        objectToFB: (VisualFieldModelDTO object, fb.Builder fbb) {
          final namefieldOffset = fbb.writeString(object.namefield);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addInt64(2, object.vm.targetId);
          fbb.addOffset(3, namefieldOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = VisualFieldModelDTO(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              namefield: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''));
          object.vm.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          object.vm.attach(store);
          InternalToManyAccess.setRelInfo(
              object.rows,
              store,
              RelInfo<VisualRowModelDTO>.toOneBacklink(3, object.id,
                  (VisualRowModelDTO srcObject) => srcObject.field),
              store.box<VisualFieldModelDTO>());
          return object;
        }),
    VisualRowModelDTO: EntityDefinition<VisualRowModelDTO>(
        model: _entities[2],
        toOneRelations: (VisualRowModelDTO object) => [object.field],
        toManyRelations: (VisualRowModelDTO object) => {},
        getId: (VisualRowModelDTO object) => object.id,
        setId: (VisualRowModelDTO object, int id) {
          object.id = id;
        },
        objectToFB: (VisualRowModelDTO object, fb.Builder fbb) {
          final valueOffset = fbb.writeString(object.value);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.position);
          fbb.addInt64(2, object.field.targetId);
          fbb.addOffset(3, valueOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = VisualRowModelDTO(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              position:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              value: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''));
          object.field.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          object.field.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [VisualModelDTO] entity fields to define ObjectBox queries.
class VisualModelDTO_ {
  /// see [VisualModelDTO.id]
  static final id =
      QueryIntegerProperty<VisualModelDTO>(_entities[0].properties[0]);

  /// see [VisualModelDTO.name]
  static final name =
      QueryStringProperty<VisualModelDTO>(_entities[0].properties[1]);

  /// see [VisualModelDTO.description]
  static final description =
      QueryStringProperty<VisualModelDTO>(_entities[0].properties[2]);
}

/// [VisualFieldModelDTO] entity fields to define ObjectBox queries.
class VisualFieldModelDTO_ {
  /// see [VisualFieldModelDTO.id]
  static final id =
      QueryIntegerProperty<VisualFieldModelDTO>(_entities[1].properties[0]);

  /// see [VisualFieldModelDTO.vm]
  static final vm = QueryRelationToOne<VisualFieldModelDTO, VisualModelDTO>(
      _entities[1].properties[1]);

  /// see [VisualFieldModelDTO.namefield]
  static final namefield =
      QueryStringProperty<VisualFieldModelDTO>(_entities[1].properties[2]);
}

/// [VisualRowModelDTO] entity fields to define ObjectBox queries.
class VisualRowModelDTO_ {
  /// see [VisualRowModelDTO.id]
  static final id =
      QueryIntegerProperty<VisualRowModelDTO>(_entities[2].properties[0]);

  /// see [VisualRowModelDTO.position]
  static final position =
      QueryIntegerProperty<VisualRowModelDTO>(_entities[2].properties[1]);

  /// see [VisualRowModelDTO.field]
  static final field =
      QueryRelationToOne<VisualRowModelDTO, VisualFieldModelDTO>(
          _entities[2].properties[2]);

  /// see [VisualRowModelDTO.value]
  static final value =
      QueryStringProperty<VisualRowModelDTO>(_entities[2].properties[3]);
}

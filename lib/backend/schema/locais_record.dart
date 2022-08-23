import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locais_record.g.dart';

abstract class LocaisRecord
    implements Built<LocaisRecord, LocaisRecordBuilder> {
  static Serializer<LocaisRecord> get serializer => _$locaisRecordSerializer;

  @nullable
  String get hasChairWheel;

  @nullable
  String get hasHandicappedHelp;

  @nullable
  String get hasInterpreter;

  @nullable
  String get hasSpecialFurniture;

  @nullable
  String get idLocal;

  @nullable
  String get name;

  @nullable
  String get nota;

  @nullable
  String get objectId;

  @nullable
  String get phone1;

  @nullable
  String get placeId;

  @nullable
  String get types;

  @nullable
  String get vaga;

  @nullable
  String get validatedBy;

  @nullable
  String get vicinity;

  @nullable
  String get foto;

  @nullable
  String get lng2;

  @nullable
  String get lat2;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LocaisRecordBuilder builder) => builder
    ..hasChairWheel = ''
    ..hasHandicappedHelp = ''
    ..hasInterpreter = ''
    ..hasSpecialFurniture = ''
    ..idLocal = ''
    ..name = ''
    ..nota = ''
    ..objectId = ''
    ..phone1 = ''
    ..placeId = ''
    ..types = ''
    ..vaga = ''
    ..validatedBy = ''
    ..vicinity = ''
    ..foto = ''
    ..lng2 = ''
    ..lat2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locais');

  static Stream<LocaisRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LocaisRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LocaisRecord._();
  factory LocaisRecord([void Function(LocaisRecordBuilder) updates]) =
      _$LocaisRecord;

  static LocaisRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLocaisRecordData({
  String hasChairWheel,
  String hasHandicappedHelp,
  String hasInterpreter,
  String hasSpecialFurniture,
  String idLocal,
  String name,
  String nota,
  String objectId,
  String phone1,
  String placeId,
  String types,
  String vaga,
  String validatedBy,
  String vicinity,
  String foto,
  String lng2,
  String lat2,
}) =>
    serializers.toFirestore(
        LocaisRecord.serializer,
        LocaisRecord((l) => l
          ..hasChairWheel = hasChairWheel
          ..hasHandicappedHelp = hasHandicappedHelp
          ..hasInterpreter = hasInterpreter
          ..hasSpecialFurniture = hasSpecialFurniture
          ..idLocal = idLocal
          ..name = name
          ..nota = nota
          ..objectId = objectId
          ..phone1 = phone1
          ..placeId = placeId
          ..types = types
          ..vaga = vaga
          ..validatedBy = validatedBy
          ..vicinity = vicinity
          ..foto = foto
          ..lng2 = lng2
          ..lat2 = lat2));

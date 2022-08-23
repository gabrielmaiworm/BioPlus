import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'avarias_record.g.dart';

abstract class AvariasRecord
    implements Built<AvariasRecord, AvariasRecordBuilder> {
  static Serializer<AvariasRecord> get serializer => _$avariasRecordSerializer;

  @nullable
  bool get buraco;

  @nullable
  bool get entulho;

  @nullable
  bool get poste;

  @nullable
  bool get outros;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(AvariasRecordBuilder builder) => builder
    ..buraco = false
    ..entulho = false
    ..poste = false
    ..outros = false;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('avarias')
          : FirebaseFirestore.instance.collectionGroup('avarias');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('avarias').doc();

  static Stream<AvariasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AvariasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AvariasRecord._();
  factory AvariasRecord([void Function(AvariasRecordBuilder) updates]) =
      _$AvariasRecord;

  static AvariasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAvariasRecordData({
  bool buraco,
  bool entulho,
  bool poste,
  bool outros,
}) =>
    serializers.toFirestore(
        AvariasRecord.serializer,
        AvariasRecord((a) => a
          ..buraco = buraco
          ..entulho = entulho
          ..poste = poste
          ..outros = outros));

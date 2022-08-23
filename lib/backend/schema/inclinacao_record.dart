import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inclinacao_record.g.dart';

abstract class InclinacaoRecord
    implements Built<InclinacaoRecord, InclinacaoRecordBuilder> {
  static Serializer<InclinacaoRecord> get serializer =>
      _$inclinacaoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'nao_possui')
  bool get naoPossui;

  @nullable
  bool get cinco;

  @nullable
  bool get dez;

  @nullable
  bool get quinze;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(InclinacaoRecordBuilder builder) => builder
    ..naoPossui = false
    ..cinco = false
    ..dez = false
    ..quinze = false;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('inclinacao')
          : FirebaseFirestore.instance.collectionGroup('inclinacao');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('inclinacao').doc();

  static Stream<InclinacaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<InclinacaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InclinacaoRecord._();
  factory InclinacaoRecord([void Function(InclinacaoRecordBuilder) updates]) =
      _$InclinacaoRecord;

  static InclinacaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createInclinacaoRecordData({
  bool naoPossui,
  bool cinco,
  bool dez,
  bool quinze,
}) =>
    serializers.toFirestore(
        InclinacaoRecord.serializer,
        InclinacaoRecord((i) => i
          ..naoPossui = naoPossui
          ..cinco = cinco
          ..dez = dez
          ..quinze = quinze));

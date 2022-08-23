import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calcada_possui_record.g.dart';

abstract class CalcadaPossuiRecord
    implements Built<CalcadaPossuiRecord, CalcadaPossuiRecordBuilder> {
  static Serializer<CalcadaPossuiRecord> get serializer =>
      _$calcadaPossuiRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'faixa_servico')
  bool get faixaServico;

  @nullable
  @BuiltValueField(wireName: 'faixa_livre')
  bool get faixaLivre;

  @nullable
  @BuiltValueField(wireName: 'faixa_acesso')
  bool get faixaAcesso;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(CalcadaPossuiRecordBuilder builder) => builder
    ..faixaServico = false
    ..faixaLivre = false
    ..faixaAcesso = false;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('calcada_possui')
          : FirebaseFirestore.instance.collectionGroup('calcada_possui');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('calcada_possui').doc();

  static Stream<CalcadaPossuiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CalcadaPossuiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CalcadaPossuiRecord._();
  factory CalcadaPossuiRecord(
          [void Function(CalcadaPossuiRecordBuilder) updates]) =
      _$CalcadaPossuiRecord;

  static CalcadaPossuiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCalcadaPossuiRecordData({
  bool faixaServico,
  bool faixaLivre,
  bool faixaAcesso,
}) =>
    serializers.toFirestore(
        CalcadaPossuiRecord.serializer,
        CalcadaPossuiRecord((c) => c
          ..faixaServico = faixaServico
          ..faixaLivre = faixaLivre
          ..faixaAcesso = faixaAcesso));

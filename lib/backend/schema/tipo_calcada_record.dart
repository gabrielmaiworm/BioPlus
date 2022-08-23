import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tipo_calcada_record.g.dart';

abstract class TipoCalcadaRecord
    implements Built<TipoCalcadaRecord, TipoCalcadaRecordBuilder> {
  static Serializer<TipoCalcadaRecord> get serializer =>
      _$tipoCalcadaRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'bloco_elevado')
  bool get blocoElevado;

  @nullable
  bool get concreto;

  @nullable
  @BuiltValueField(wireName: 'pedra_portuguesa')
  bool get pedraPortuguesa;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(TipoCalcadaRecordBuilder builder) => builder
    ..blocoElevado = false
    ..concreto = false
    ..pedraPortuguesa = false;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('tipo_calcada')
          : FirebaseFirestore.instance.collectionGroup('tipo_calcada');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('tipo_calcada').doc();

  static Stream<TipoCalcadaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TipoCalcadaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TipoCalcadaRecord._();
  factory TipoCalcadaRecord([void Function(TipoCalcadaRecordBuilder) updates]) =
      _$TipoCalcadaRecord;

  static TipoCalcadaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTipoCalcadaRecordData({
  bool blocoElevado,
  bool concreto,
  bool pedraPortuguesa,
}) =>
    serializers.toFirestore(
        TipoCalcadaRecord.serializer,
        TipoCalcadaRecord((t) => t
          ..blocoElevado = blocoElevado
          ..concreto = concreto
          ..pedraPortuguesa = pedraPortuguesa));

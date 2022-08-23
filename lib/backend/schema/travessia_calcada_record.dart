import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'travessia_calcada_record.g.dart';

abstract class TravessiaCalcadaRecord
    implements Built<TravessiaCalcadaRecord, TravessiaCalcadaRecordBuilder> {
  static Serializer<TravessiaCalcadaRecord> get serializer =>
      _$travessiaCalcadaRecordSerializer;

  @nullable
  bool get esquina;

  @nullable
  @BuiltValueField(wireName: 'faixa_p_COM_semaforo')
  bool get faixaPCOMSemaforo;

  @nullable
  @BuiltValueField(wireName: 'faixa_p_SEM_semaforo')
  bool get faixaPSEMSemaforo;

  @nullable
  @BuiltValueField(wireName: 'faixa_elevada_p_COM_semaforo')
  bool get faixaElevadaPCOMSemaforo;

  @nullable
  @BuiltValueField(wireName: 'faixa_elevada_p_SEM_semaforo')
  bool get faixaElevadaPSEMSemaforo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(TravessiaCalcadaRecordBuilder builder) =>
      builder
        ..esquina = false
        ..faixaPCOMSemaforo = false
        ..faixaPSEMSemaforo = false
        ..faixaElevadaPCOMSemaforo = false
        ..faixaElevadaPSEMSemaforo = false;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('travessia_calcada')
          : FirebaseFirestore.instance.collectionGroup('travessia_calcada');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('travessia_calcada').doc();

  static Stream<TravessiaCalcadaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TravessiaCalcadaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TravessiaCalcadaRecord._();
  factory TravessiaCalcadaRecord(
          [void Function(TravessiaCalcadaRecordBuilder) updates]) =
      _$TravessiaCalcadaRecord;

  static TravessiaCalcadaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTravessiaCalcadaRecordData({
  bool esquina,
  bool faixaPCOMSemaforo,
  bool faixaPSEMSemaforo,
  bool faixaElevadaPCOMSemaforo,
  bool faixaElevadaPSEMSemaforo,
}) =>
    serializers.toFirestore(
        TravessiaCalcadaRecord.serializer,
        TravessiaCalcadaRecord((t) => t
          ..esquina = esquina
          ..faixaPCOMSemaforo = faixaPCOMSemaforo
          ..faixaPSEMSemaforo = faixaPSEMSemaforo
          ..faixaElevadaPCOMSemaforo = faixaElevadaPCOMSemaforo
          ..faixaElevadaPSEMSemaforo = faixaElevadaPSEMSemaforo));

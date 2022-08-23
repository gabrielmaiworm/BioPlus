import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pisos_rampa_record.g.dart';

abstract class PisosRampaRecord
    implements Built<PisosRampaRecord, PisosRampaRecordBuilder> {
  static Serializer<PisosRampaRecord> get serializer =>
      _$pisosRampaRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'piso_direcional')
  bool get pisoDirecional;

  @nullable
  @BuiltValueField(wireName: 'rampa_acesso_via')
  bool get rampaAcessoVia;

  @nullable
  @BuiltValueField(wireName: 'rampa_acesso_imovel')
  bool get rampaAcessoImovel;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(PisosRampaRecordBuilder builder) => builder
    ..pisoDirecional = false
    ..rampaAcessoVia = false
    ..rampaAcessoImovel = false;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('pisos_rampa')
          : FirebaseFirestore.instance.collectionGroup('pisos_rampa');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('pisos_rampa').doc();

  static Stream<PisosRampaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PisosRampaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PisosRampaRecord._();
  factory PisosRampaRecord([void Function(PisosRampaRecordBuilder) updates]) =
      _$PisosRampaRecord;

  static PisosRampaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPisosRampaRecordData({
  bool pisoDirecional,
  bool rampaAcessoVia,
  bool rampaAcessoImovel,
}) =>
    serializers.toFirestore(
        PisosRampaRecord.serializer,
        PisosRampaRecord((p) => p
          ..pisoDirecional = pisoDirecional
          ..rampaAcessoVia = rampaAcessoVia
          ..rampaAcessoImovel = rampaAcessoImovel));

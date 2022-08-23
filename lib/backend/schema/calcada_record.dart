import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calcada_record.g.dart';

abstract class CalcadaRecord
    implements Built<CalcadaRecord, CalcadaRecordBuilder> {
  static Serializer<CalcadaRecord> get serializer => _$calcadaRecordSerializer;

  @nullable
  DocumentReference get usuario;

  @nullable
  @BuiltValueField(wireName: 'foto_capa')
  String get fotoCapa;

  @nullable
  double get largura;

  @nullable
  int get comprimento;

  @nullable
  @BuiltValueField(wireName: 'lat_long')
  LatLng get latLong;

  @nullable
  String get endereco;

  @nullable
  @BuiltValueField(wireName: 'observacoes_gerais')
  String get observacoesGerais;

  @nullable
  @BuiltValueField(wireName: 'foto_tipo_calcada')
  String get fotoTipoCalcada;

  @nullable
  @BuiltValueField(wireName: 'foto_calcada_possui')
  String get fotoCalcadaPossui;

  @nullable
  @BuiltValueField(wireName: 'foto_travessia_calcada')
  String get fotoTravessiaCalcada;

  @nullable
  @BuiltValueField(wireName: 'foto_avarias')
  String get fotoAvarias;

  @nullable
  @BuiltValueField(wireName: 'foto_pisos_rampas')
  String get fotoPisosRampas;

  @nullable
  @BuiltValueField(wireName: 'foto_inclinacao')
  String get fotoInclinacao;

  @nullable
  @BuiltValueField(wireName: 'nota_geral')
  double get notaGeral;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CalcadaRecordBuilder builder) => builder
    ..fotoCapa = ''
    ..largura = 0.0
    ..comprimento = 0
    ..endereco = ''
    ..observacoesGerais = ''
    ..fotoTipoCalcada = ''
    ..fotoCalcadaPossui = ''
    ..fotoTravessiaCalcada = ''
    ..fotoAvarias = ''
    ..fotoPisosRampas = ''
    ..fotoInclinacao = ''
    ..notaGeral = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calcada');

  static Stream<CalcadaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CalcadaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CalcadaRecord._();
  factory CalcadaRecord([void Function(CalcadaRecordBuilder) updates]) =
      _$CalcadaRecord;

  static CalcadaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCalcadaRecordData({
  DocumentReference usuario,
  String fotoCapa,
  double largura,
  int comprimento,
  LatLng latLong,
  String endereco,
  String observacoesGerais,
  String fotoTipoCalcada,
  String fotoCalcadaPossui,
  String fotoTravessiaCalcada,
  String fotoAvarias,
  String fotoPisosRampas,
  String fotoInclinacao,
  double notaGeral,
}) =>
    serializers.toFirestore(
        CalcadaRecord.serializer,
        CalcadaRecord((c) => c
          ..usuario = usuario
          ..fotoCapa = fotoCapa
          ..largura = largura
          ..comprimento = comprimento
          ..latLong = latLong
          ..endereco = endereco
          ..observacoesGerais = observacoesGerais
          ..fotoTipoCalcada = fotoTipoCalcada
          ..fotoCalcadaPossui = fotoCalcadaPossui
          ..fotoTravessiaCalcada = fotoTravessiaCalcada
          ..fotoAvarias = fotoAvarias
          ..fotoPisosRampas = fotoPisosRampas
          ..fotoInclinacao = fotoInclinacao
          ..notaGeral = notaGeral));

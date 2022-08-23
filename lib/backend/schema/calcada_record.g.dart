// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calcada_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CalcadaRecord> _$calcadaRecordSerializer =
    new _$CalcadaRecordSerializer();

class _$CalcadaRecordSerializer implements StructuredSerializer<CalcadaRecord> {
  @override
  final Iterable<Type> types = const [CalcadaRecord, _$CalcadaRecord];
  @override
  final String wireName = 'CalcadaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CalcadaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.fotoCapa;
    if (value != null) {
      result
        ..add('foto_capa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.largura;
    if (value != null) {
      result
        ..add('largura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.comprimento;
    if (value != null) {
      result
        ..add('comprimento')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.latLong;
    if (value != null) {
      result
        ..add('lat_long')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.endereco;
    if (value != null) {
      result
        ..add('endereco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.observacoesGerais;
    if (value != null) {
      result
        ..add('observacoes_gerais')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoTipoCalcada;
    if (value != null) {
      result
        ..add('foto_tipo_calcada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoCalcadaPossui;
    if (value != null) {
      result
        ..add('foto_calcada_possui')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoTravessiaCalcada;
    if (value != null) {
      result
        ..add('foto_travessia_calcada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoAvarias;
    if (value != null) {
      result
        ..add('foto_avarias')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoPisosRampas;
    if (value != null) {
      result
        ..add('foto_pisos_rampas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoInclinacao;
    if (value != null) {
      result
        ..add('foto_inclinacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notaGeral;
    if (value != null) {
      result
        ..add('nota_geral')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CalcadaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalcadaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'usuario':
          result.usuario = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'foto_capa':
          result.fotoCapa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'largura':
          result.largura = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'comprimento':
          result.comprimento = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lat_long':
          result.latLong = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'observacoes_gerais':
          result.observacoesGerais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_tipo_calcada':
          result.fotoTipoCalcada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_calcada_possui':
          result.fotoCalcadaPossui = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_travessia_calcada':
          result.fotoTravessiaCalcada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_avarias':
          result.fotoAvarias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_pisos_rampas':
          result.fotoPisosRampas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_inclinacao':
          result.fotoInclinacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nota_geral':
          result.notaGeral = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CalcadaRecord extends CalcadaRecord {
  @override
  final DocumentReference<Object> usuario;
  @override
  final String fotoCapa;
  @override
  final double largura;
  @override
  final int comprimento;
  @override
  final LatLng latLong;
  @override
  final String endereco;
  @override
  final String observacoesGerais;
  @override
  final String fotoTipoCalcada;
  @override
  final String fotoCalcadaPossui;
  @override
  final String fotoTravessiaCalcada;
  @override
  final String fotoAvarias;
  @override
  final String fotoPisosRampas;
  @override
  final String fotoInclinacao;
  @override
  final double notaGeral;
  @override
  final DocumentReference<Object> reference;

  factory _$CalcadaRecord([void Function(CalcadaRecordBuilder) updates]) =>
      (new CalcadaRecordBuilder()..update(updates)).build();

  _$CalcadaRecord._(
      {this.usuario,
      this.fotoCapa,
      this.largura,
      this.comprimento,
      this.latLong,
      this.endereco,
      this.observacoesGerais,
      this.fotoTipoCalcada,
      this.fotoCalcadaPossui,
      this.fotoTravessiaCalcada,
      this.fotoAvarias,
      this.fotoPisosRampas,
      this.fotoInclinacao,
      this.notaGeral,
      this.reference})
      : super._();

  @override
  CalcadaRecord rebuild(void Function(CalcadaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalcadaRecordBuilder toBuilder() => new CalcadaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalcadaRecord &&
        usuario == other.usuario &&
        fotoCapa == other.fotoCapa &&
        largura == other.largura &&
        comprimento == other.comprimento &&
        latLong == other.latLong &&
        endereco == other.endereco &&
        observacoesGerais == other.observacoesGerais &&
        fotoTipoCalcada == other.fotoTipoCalcada &&
        fotoCalcadaPossui == other.fotoCalcadaPossui &&
        fotoTravessiaCalcada == other.fotoTravessiaCalcada &&
        fotoAvarias == other.fotoAvarias &&
        fotoPisosRampas == other.fotoPisosRampas &&
        fotoInclinacao == other.fotoInclinacao &&
        notaGeral == other.notaGeral &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                usuario
                                                                    .hashCode),
                                                            fotoCapa.hashCode),
                                                        largura.hashCode),
                                                    comprimento.hashCode),
                                                latLong.hashCode),
                                            endereco.hashCode),
                                        observacoesGerais.hashCode),
                                    fotoTipoCalcada.hashCode),
                                fotoCalcadaPossui.hashCode),
                            fotoTravessiaCalcada.hashCode),
                        fotoAvarias.hashCode),
                    fotoPisosRampas.hashCode),
                fotoInclinacao.hashCode),
            notaGeral.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalcadaRecord')
          ..add('usuario', usuario)
          ..add('fotoCapa', fotoCapa)
          ..add('largura', largura)
          ..add('comprimento', comprimento)
          ..add('latLong', latLong)
          ..add('endereco', endereco)
          ..add('observacoesGerais', observacoesGerais)
          ..add('fotoTipoCalcada', fotoTipoCalcada)
          ..add('fotoCalcadaPossui', fotoCalcadaPossui)
          ..add('fotoTravessiaCalcada', fotoTravessiaCalcada)
          ..add('fotoAvarias', fotoAvarias)
          ..add('fotoPisosRampas', fotoPisosRampas)
          ..add('fotoInclinacao', fotoInclinacao)
          ..add('notaGeral', notaGeral)
          ..add('reference', reference))
        .toString();
  }
}

class CalcadaRecordBuilder
    implements Builder<CalcadaRecord, CalcadaRecordBuilder> {
  _$CalcadaRecord _$v;

  DocumentReference<Object> _usuario;
  DocumentReference<Object> get usuario => _$this._usuario;
  set usuario(DocumentReference<Object> usuario) => _$this._usuario = usuario;

  String _fotoCapa;
  String get fotoCapa => _$this._fotoCapa;
  set fotoCapa(String fotoCapa) => _$this._fotoCapa = fotoCapa;

  double _largura;
  double get largura => _$this._largura;
  set largura(double largura) => _$this._largura = largura;

  int _comprimento;
  int get comprimento => _$this._comprimento;
  set comprimento(int comprimento) => _$this._comprimento = comprimento;

  LatLng _latLong;
  LatLng get latLong => _$this._latLong;
  set latLong(LatLng latLong) => _$this._latLong = latLong;

  String _endereco;
  String get endereco => _$this._endereco;
  set endereco(String endereco) => _$this._endereco = endereco;

  String _observacoesGerais;
  String get observacoesGerais => _$this._observacoesGerais;
  set observacoesGerais(String observacoesGerais) =>
      _$this._observacoesGerais = observacoesGerais;

  String _fotoTipoCalcada;
  String get fotoTipoCalcada => _$this._fotoTipoCalcada;
  set fotoTipoCalcada(String fotoTipoCalcada) =>
      _$this._fotoTipoCalcada = fotoTipoCalcada;

  String _fotoCalcadaPossui;
  String get fotoCalcadaPossui => _$this._fotoCalcadaPossui;
  set fotoCalcadaPossui(String fotoCalcadaPossui) =>
      _$this._fotoCalcadaPossui = fotoCalcadaPossui;

  String _fotoTravessiaCalcada;
  String get fotoTravessiaCalcada => _$this._fotoTravessiaCalcada;
  set fotoTravessiaCalcada(String fotoTravessiaCalcada) =>
      _$this._fotoTravessiaCalcada = fotoTravessiaCalcada;

  String _fotoAvarias;
  String get fotoAvarias => _$this._fotoAvarias;
  set fotoAvarias(String fotoAvarias) => _$this._fotoAvarias = fotoAvarias;

  String _fotoPisosRampas;
  String get fotoPisosRampas => _$this._fotoPisosRampas;
  set fotoPisosRampas(String fotoPisosRampas) =>
      _$this._fotoPisosRampas = fotoPisosRampas;

  String _fotoInclinacao;
  String get fotoInclinacao => _$this._fotoInclinacao;
  set fotoInclinacao(String fotoInclinacao) =>
      _$this._fotoInclinacao = fotoInclinacao;

  double _notaGeral;
  double get notaGeral => _$this._notaGeral;
  set notaGeral(double notaGeral) => _$this._notaGeral = notaGeral;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CalcadaRecordBuilder() {
    CalcadaRecord._initializeBuilder(this);
  }

  CalcadaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usuario = $v.usuario;
      _fotoCapa = $v.fotoCapa;
      _largura = $v.largura;
      _comprimento = $v.comprimento;
      _latLong = $v.latLong;
      _endereco = $v.endereco;
      _observacoesGerais = $v.observacoesGerais;
      _fotoTipoCalcada = $v.fotoTipoCalcada;
      _fotoCalcadaPossui = $v.fotoCalcadaPossui;
      _fotoTravessiaCalcada = $v.fotoTravessiaCalcada;
      _fotoAvarias = $v.fotoAvarias;
      _fotoPisosRampas = $v.fotoPisosRampas;
      _fotoInclinacao = $v.fotoInclinacao;
      _notaGeral = $v.notaGeral;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalcadaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalcadaRecord;
  }

  @override
  void update(void Function(CalcadaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalcadaRecord build() {
    final _$result = _$v ??
        new _$CalcadaRecord._(
            usuario: usuario,
            fotoCapa: fotoCapa,
            largura: largura,
            comprimento: comprimento,
            latLong: latLong,
            endereco: endereco,
            observacoesGerais: observacoesGerais,
            fotoTipoCalcada: fotoTipoCalcada,
            fotoCalcadaPossui: fotoCalcadaPossui,
            fotoTravessiaCalcada: fotoTravessiaCalcada,
            fotoAvarias: fotoAvarias,
            fotoPisosRampas: fotoPisosRampas,
            fotoInclinacao: fotoInclinacao,
            notaGeral: notaGeral,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pisos_rampa_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PisosRampaRecord> _$pisosRampaRecordSerializer =
    new _$PisosRampaRecordSerializer();

class _$PisosRampaRecordSerializer
    implements StructuredSerializer<PisosRampaRecord> {
  @override
  final Iterable<Type> types = const [PisosRampaRecord, _$PisosRampaRecord];
  @override
  final String wireName = 'PisosRampaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PisosRampaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.pisoDirecional;
    if (value != null) {
      result
        ..add('piso_direcional')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rampaAcessoVia;
    if (value != null) {
      result
        ..add('rampa_acesso_via')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rampaAcessoImovel;
    if (value != null) {
      result
        ..add('rampa_acesso_imovel')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  PisosRampaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PisosRampaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'piso_direcional':
          result.pisoDirecional = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rampa_acesso_via':
          result.rampaAcessoVia = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rampa_acesso_imovel':
          result.rampaAcessoImovel = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$PisosRampaRecord extends PisosRampaRecord {
  @override
  final bool pisoDirecional;
  @override
  final bool rampaAcessoVia;
  @override
  final bool rampaAcessoImovel;
  @override
  final DocumentReference<Object> reference;

  factory _$PisosRampaRecord(
          [void Function(PisosRampaRecordBuilder) updates]) =>
      (new PisosRampaRecordBuilder()..update(updates)).build();

  _$PisosRampaRecord._(
      {this.pisoDirecional,
      this.rampaAcessoVia,
      this.rampaAcessoImovel,
      this.reference})
      : super._();

  @override
  PisosRampaRecord rebuild(void Function(PisosRampaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PisosRampaRecordBuilder toBuilder() =>
      new PisosRampaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PisosRampaRecord &&
        pisoDirecional == other.pisoDirecional &&
        rampaAcessoVia == other.rampaAcessoVia &&
        rampaAcessoImovel == other.rampaAcessoImovel &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, pisoDirecional.hashCode), rampaAcessoVia.hashCode),
            rampaAcessoImovel.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PisosRampaRecord')
          ..add('pisoDirecional', pisoDirecional)
          ..add('rampaAcessoVia', rampaAcessoVia)
          ..add('rampaAcessoImovel', rampaAcessoImovel)
          ..add('reference', reference))
        .toString();
  }
}

class PisosRampaRecordBuilder
    implements Builder<PisosRampaRecord, PisosRampaRecordBuilder> {
  _$PisosRampaRecord _$v;

  bool _pisoDirecional;
  bool get pisoDirecional => _$this._pisoDirecional;
  set pisoDirecional(bool pisoDirecional) =>
      _$this._pisoDirecional = pisoDirecional;

  bool _rampaAcessoVia;
  bool get rampaAcessoVia => _$this._rampaAcessoVia;
  set rampaAcessoVia(bool rampaAcessoVia) =>
      _$this._rampaAcessoVia = rampaAcessoVia;

  bool _rampaAcessoImovel;
  bool get rampaAcessoImovel => _$this._rampaAcessoImovel;
  set rampaAcessoImovel(bool rampaAcessoImovel) =>
      _$this._rampaAcessoImovel = rampaAcessoImovel;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PisosRampaRecordBuilder() {
    PisosRampaRecord._initializeBuilder(this);
  }

  PisosRampaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pisoDirecional = $v.pisoDirecional;
      _rampaAcessoVia = $v.rampaAcessoVia;
      _rampaAcessoImovel = $v.rampaAcessoImovel;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PisosRampaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PisosRampaRecord;
  }

  @override
  void update(void Function(PisosRampaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PisosRampaRecord build() {
    final _$result = _$v ??
        new _$PisosRampaRecord._(
            pisoDirecional: pisoDirecional,
            rampaAcessoVia: rampaAcessoVia,
            rampaAcessoImovel: rampaAcessoImovel,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

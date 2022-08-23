// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_calcada_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TipoCalcadaRecord> _$tipoCalcadaRecordSerializer =
    new _$TipoCalcadaRecordSerializer();

class _$TipoCalcadaRecordSerializer
    implements StructuredSerializer<TipoCalcadaRecord> {
  @override
  final Iterable<Type> types = const [TipoCalcadaRecord, _$TipoCalcadaRecord];
  @override
  final String wireName = 'TipoCalcadaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TipoCalcadaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.blocoElevado;
    if (value != null) {
      result
        ..add('bloco_elevado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.concreto;
    if (value != null) {
      result
        ..add('concreto')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.pedraPortuguesa;
    if (value != null) {
      result
        ..add('pedra_portuguesa')
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
  TipoCalcadaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TipoCalcadaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'bloco_elevado':
          result.blocoElevado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'concreto':
          result.concreto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pedra_portuguesa':
          result.pedraPortuguesa = serializers.deserialize(value,
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

class _$TipoCalcadaRecord extends TipoCalcadaRecord {
  @override
  final bool blocoElevado;
  @override
  final bool concreto;
  @override
  final bool pedraPortuguesa;
  @override
  final DocumentReference<Object> reference;

  factory _$TipoCalcadaRecord(
          [void Function(TipoCalcadaRecordBuilder) updates]) =>
      (new TipoCalcadaRecordBuilder()..update(updates)).build();

  _$TipoCalcadaRecord._(
      {this.blocoElevado, this.concreto, this.pedraPortuguesa, this.reference})
      : super._();

  @override
  TipoCalcadaRecord rebuild(void Function(TipoCalcadaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TipoCalcadaRecordBuilder toBuilder() =>
      new TipoCalcadaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TipoCalcadaRecord &&
        blocoElevado == other.blocoElevado &&
        concreto == other.concreto &&
        pedraPortuguesa == other.pedraPortuguesa &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, blocoElevado.hashCode), concreto.hashCode),
            pedraPortuguesa.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TipoCalcadaRecord')
          ..add('blocoElevado', blocoElevado)
          ..add('concreto', concreto)
          ..add('pedraPortuguesa', pedraPortuguesa)
          ..add('reference', reference))
        .toString();
  }
}

class TipoCalcadaRecordBuilder
    implements Builder<TipoCalcadaRecord, TipoCalcadaRecordBuilder> {
  _$TipoCalcadaRecord _$v;

  bool _blocoElevado;
  bool get blocoElevado => _$this._blocoElevado;
  set blocoElevado(bool blocoElevado) => _$this._blocoElevado = blocoElevado;

  bool _concreto;
  bool get concreto => _$this._concreto;
  set concreto(bool concreto) => _$this._concreto = concreto;

  bool _pedraPortuguesa;
  bool get pedraPortuguesa => _$this._pedraPortuguesa;
  set pedraPortuguesa(bool pedraPortuguesa) =>
      _$this._pedraPortuguesa = pedraPortuguesa;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TipoCalcadaRecordBuilder() {
    TipoCalcadaRecord._initializeBuilder(this);
  }

  TipoCalcadaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blocoElevado = $v.blocoElevado;
      _concreto = $v.concreto;
      _pedraPortuguesa = $v.pedraPortuguesa;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TipoCalcadaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TipoCalcadaRecord;
  }

  @override
  void update(void Function(TipoCalcadaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TipoCalcadaRecord build() {
    final _$result = _$v ??
        new _$TipoCalcadaRecord._(
            blocoElevado: blocoElevado,
            concreto: concreto,
            pedraPortuguesa: pedraPortuguesa,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

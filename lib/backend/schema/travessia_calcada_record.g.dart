// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travessia_calcada_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TravessiaCalcadaRecord> _$travessiaCalcadaRecordSerializer =
    new _$TravessiaCalcadaRecordSerializer();

class _$TravessiaCalcadaRecordSerializer
    implements StructuredSerializer<TravessiaCalcadaRecord> {
  @override
  final Iterable<Type> types = const [
    TravessiaCalcadaRecord,
    _$TravessiaCalcadaRecord
  ];
  @override
  final String wireName = 'TravessiaCalcadaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TravessiaCalcadaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.esquina;
    if (value != null) {
      result
        ..add('esquina')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.faixaPCOMSemaforo;
    if (value != null) {
      result
        ..add('faixa_p_COM_semaforo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.faixaPSEMSemaforo;
    if (value != null) {
      result
        ..add('faixa_p_SEM_semaforo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.faixaElevadaPCOMSemaforo;
    if (value != null) {
      result
        ..add('faixa_elevada_p_COM_semaforo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.faixaElevadaPSEMSemaforo;
    if (value != null) {
      result
        ..add('faixa_elevada_p_SEM_semaforo')
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
  TravessiaCalcadaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TravessiaCalcadaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'esquina':
          result.esquina = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'faixa_p_COM_semaforo':
          result.faixaPCOMSemaforo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'faixa_p_SEM_semaforo':
          result.faixaPSEMSemaforo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'faixa_elevada_p_COM_semaforo':
          result.faixaElevadaPCOMSemaforo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'faixa_elevada_p_SEM_semaforo':
          result.faixaElevadaPSEMSemaforo = serializers.deserialize(value,
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

class _$TravessiaCalcadaRecord extends TravessiaCalcadaRecord {
  @override
  final bool esquina;
  @override
  final bool faixaPCOMSemaforo;
  @override
  final bool faixaPSEMSemaforo;
  @override
  final bool faixaElevadaPCOMSemaforo;
  @override
  final bool faixaElevadaPSEMSemaforo;
  @override
  final DocumentReference<Object> reference;

  factory _$TravessiaCalcadaRecord(
          [void Function(TravessiaCalcadaRecordBuilder) updates]) =>
      (new TravessiaCalcadaRecordBuilder()..update(updates)).build();

  _$TravessiaCalcadaRecord._(
      {this.esquina,
      this.faixaPCOMSemaforo,
      this.faixaPSEMSemaforo,
      this.faixaElevadaPCOMSemaforo,
      this.faixaElevadaPSEMSemaforo,
      this.reference})
      : super._();

  @override
  TravessiaCalcadaRecord rebuild(
          void Function(TravessiaCalcadaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TravessiaCalcadaRecordBuilder toBuilder() =>
      new TravessiaCalcadaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TravessiaCalcadaRecord &&
        esquina == other.esquina &&
        faixaPCOMSemaforo == other.faixaPCOMSemaforo &&
        faixaPSEMSemaforo == other.faixaPSEMSemaforo &&
        faixaElevadaPCOMSemaforo == other.faixaElevadaPCOMSemaforo &&
        faixaElevadaPSEMSemaforo == other.faixaElevadaPSEMSemaforo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, esquina.hashCode), faixaPCOMSemaforo.hashCode),
                    faixaPSEMSemaforo.hashCode),
                faixaElevadaPCOMSemaforo.hashCode),
            faixaElevadaPSEMSemaforo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TravessiaCalcadaRecord')
          ..add('esquina', esquina)
          ..add('faixaPCOMSemaforo', faixaPCOMSemaforo)
          ..add('faixaPSEMSemaforo', faixaPSEMSemaforo)
          ..add('faixaElevadaPCOMSemaforo', faixaElevadaPCOMSemaforo)
          ..add('faixaElevadaPSEMSemaforo', faixaElevadaPSEMSemaforo)
          ..add('reference', reference))
        .toString();
  }
}

class TravessiaCalcadaRecordBuilder
    implements Builder<TravessiaCalcadaRecord, TravessiaCalcadaRecordBuilder> {
  _$TravessiaCalcadaRecord _$v;

  bool _esquina;
  bool get esquina => _$this._esquina;
  set esquina(bool esquina) => _$this._esquina = esquina;

  bool _faixaPCOMSemaforo;
  bool get faixaPCOMSemaforo => _$this._faixaPCOMSemaforo;
  set faixaPCOMSemaforo(bool faixaPCOMSemaforo) =>
      _$this._faixaPCOMSemaforo = faixaPCOMSemaforo;

  bool _faixaPSEMSemaforo;
  bool get faixaPSEMSemaforo => _$this._faixaPSEMSemaforo;
  set faixaPSEMSemaforo(bool faixaPSEMSemaforo) =>
      _$this._faixaPSEMSemaforo = faixaPSEMSemaforo;

  bool _faixaElevadaPCOMSemaforo;
  bool get faixaElevadaPCOMSemaforo => _$this._faixaElevadaPCOMSemaforo;
  set faixaElevadaPCOMSemaforo(bool faixaElevadaPCOMSemaforo) =>
      _$this._faixaElevadaPCOMSemaforo = faixaElevadaPCOMSemaforo;

  bool _faixaElevadaPSEMSemaforo;
  bool get faixaElevadaPSEMSemaforo => _$this._faixaElevadaPSEMSemaforo;
  set faixaElevadaPSEMSemaforo(bool faixaElevadaPSEMSemaforo) =>
      _$this._faixaElevadaPSEMSemaforo = faixaElevadaPSEMSemaforo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TravessiaCalcadaRecordBuilder() {
    TravessiaCalcadaRecord._initializeBuilder(this);
  }

  TravessiaCalcadaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _esquina = $v.esquina;
      _faixaPCOMSemaforo = $v.faixaPCOMSemaforo;
      _faixaPSEMSemaforo = $v.faixaPSEMSemaforo;
      _faixaElevadaPCOMSemaforo = $v.faixaElevadaPCOMSemaforo;
      _faixaElevadaPSEMSemaforo = $v.faixaElevadaPSEMSemaforo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TravessiaCalcadaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TravessiaCalcadaRecord;
  }

  @override
  void update(void Function(TravessiaCalcadaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TravessiaCalcadaRecord build() {
    final _$result = _$v ??
        new _$TravessiaCalcadaRecord._(
            esquina: esquina,
            faixaPCOMSemaforo: faixaPCOMSemaforo,
            faixaPSEMSemaforo: faixaPSEMSemaforo,
            faixaElevadaPCOMSemaforo: faixaElevadaPCOMSemaforo,
            faixaElevadaPSEMSemaforo: faixaElevadaPSEMSemaforo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

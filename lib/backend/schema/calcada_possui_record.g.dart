// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calcada_possui_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CalcadaPossuiRecord> _$calcadaPossuiRecordSerializer =
    new _$CalcadaPossuiRecordSerializer();

class _$CalcadaPossuiRecordSerializer
    implements StructuredSerializer<CalcadaPossuiRecord> {
  @override
  final Iterable<Type> types = const [
    CalcadaPossuiRecord,
    _$CalcadaPossuiRecord
  ];
  @override
  final String wireName = 'CalcadaPossuiRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CalcadaPossuiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.faixaServico;
    if (value != null) {
      result
        ..add('faixa_servico')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.faixaLivre;
    if (value != null) {
      result
        ..add('faixa_livre')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.faixaAcesso;
    if (value != null) {
      result
        ..add('faixa_acesso')
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
  CalcadaPossuiRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalcadaPossuiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'faixa_servico':
          result.faixaServico = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'faixa_livre':
          result.faixaLivre = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'faixa_acesso':
          result.faixaAcesso = serializers.deserialize(value,
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

class _$CalcadaPossuiRecord extends CalcadaPossuiRecord {
  @override
  final bool faixaServico;
  @override
  final bool faixaLivre;
  @override
  final bool faixaAcesso;
  @override
  final DocumentReference<Object> reference;

  factory _$CalcadaPossuiRecord(
          [void Function(CalcadaPossuiRecordBuilder) updates]) =>
      (new CalcadaPossuiRecordBuilder()..update(updates)).build();

  _$CalcadaPossuiRecord._(
      {this.faixaServico, this.faixaLivre, this.faixaAcesso, this.reference})
      : super._();

  @override
  CalcadaPossuiRecord rebuild(
          void Function(CalcadaPossuiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalcadaPossuiRecordBuilder toBuilder() =>
      new CalcadaPossuiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalcadaPossuiRecord &&
        faixaServico == other.faixaServico &&
        faixaLivre == other.faixaLivre &&
        faixaAcesso == other.faixaAcesso &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, faixaServico.hashCode), faixaLivre.hashCode),
            faixaAcesso.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalcadaPossuiRecord')
          ..add('faixaServico', faixaServico)
          ..add('faixaLivre', faixaLivre)
          ..add('faixaAcesso', faixaAcesso)
          ..add('reference', reference))
        .toString();
  }
}

class CalcadaPossuiRecordBuilder
    implements Builder<CalcadaPossuiRecord, CalcadaPossuiRecordBuilder> {
  _$CalcadaPossuiRecord _$v;

  bool _faixaServico;
  bool get faixaServico => _$this._faixaServico;
  set faixaServico(bool faixaServico) => _$this._faixaServico = faixaServico;

  bool _faixaLivre;
  bool get faixaLivre => _$this._faixaLivre;
  set faixaLivre(bool faixaLivre) => _$this._faixaLivre = faixaLivre;

  bool _faixaAcesso;
  bool get faixaAcesso => _$this._faixaAcesso;
  set faixaAcesso(bool faixaAcesso) => _$this._faixaAcesso = faixaAcesso;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CalcadaPossuiRecordBuilder() {
    CalcadaPossuiRecord._initializeBuilder(this);
  }

  CalcadaPossuiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _faixaServico = $v.faixaServico;
      _faixaLivre = $v.faixaLivre;
      _faixaAcesso = $v.faixaAcesso;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalcadaPossuiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalcadaPossuiRecord;
  }

  @override
  void update(void Function(CalcadaPossuiRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalcadaPossuiRecord build() {
    final _$result = _$v ??
        new _$CalcadaPossuiRecord._(
            faixaServico: faixaServico,
            faixaLivre: faixaLivre,
            faixaAcesso: faixaAcesso,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

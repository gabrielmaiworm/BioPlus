// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inclinacao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InclinacaoRecord> _$inclinacaoRecordSerializer =
    new _$InclinacaoRecordSerializer();

class _$InclinacaoRecordSerializer
    implements StructuredSerializer<InclinacaoRecord> {
  @override
  final Iterable<Type> types = const [InclinacaoRecord, _$InclinacaoRecord];
  @override
  final String wireName = 'InclinacaoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, InclinacaoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.naoPossui;
    if (value != null) {
      result
        ..add('nao_possui')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cinco;
    if (value != null) {
      result
        ..add('cinco')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dez;
    if (value != null) {
      result
        ..add('dez')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.quinze;
    if (value != null) {
      result
        ..add('quinze')
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
  InclinacaoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InclinacaoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nao_possui':
          result.naoPossui = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cinco':
          result.cinco = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'dez':
          result.dez = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'quinze':
          result.quinze = serializers.deserialize(value,
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

class _$InclinacaoRecord extends InclinacaoRecord {
  @override
  final bool naoPossui;
  @override
  final bool cinco;
  @override
  final bool dez;
  @override
  final bool quinze;
  @override
  final DocumentReference<Object> reference;

  factory _$InclinacaoRecord(
          [void Function(InclinacaoRecordBuilder) updates]) =>
      (new InclinacaoRecordBuilder()..update(updates)).build();

  _$InclinacaoRecord._(
      {this.naoPossui, this.cinco, this.dez, this.quinze, this.reference})
      : super._();

  @override
  InclinacaoRecord rebuild(void Function(InclinacaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InclinacaoRecordBuilder toBuilder() =>
      new InclinacaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InclinacaoRecord &&
        naoPossui == other.naoPossui &&
        cinco == other.cinco &&
        dez == other.dez &&
        quinze == other.quinze &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, naoPossui.hashCode), cinco.hashCode), dez.hashCode),
            quinze.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InclinacaoRecord')
          ..add('naoPossui', naoPossui)
          ..add('cinco', cinco)
          ..add('dez', dez)
          ..add('quinze', quinze)
          ..add('reference', reference))
        .toString();
  }
}

class InclinacaoRecordBuilder
    implements Builder<InclinacaoRecord, InclinacaoRecordBuilder> {
  _$InclinacaoRecord _$v;

  bool _naoPossui;
  bool get naoPossui => _$this._naoPossui;
  set naoPossui(bool naoPossui) => _$this._naoPossui = naoPossui;

  bool _cinco;
  bool get cinco => _$this._cinco;
  set cinco(bool cinco) => _$this._cinco = cinco;

  bool _dez;
  bool get dez => _$this._dez;
  set dez(bool dez) => _$this._dez = dez;

  bool _quinze;
  bool get quinze => _$this._quinze;
  set quinze(bool quinze) => _$this._quinze = quinze;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  InclinacaoRecordBuilder() {
    InclinacaoRecord._initializeBuilder(this);
  }

  InclinacaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _naoPossui = $v.naoPossui;
      _cinco = $v.cinco;
      _dez = $v.dez;
      _quinze = $v.quinze;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InclinacaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InclinacaoRecord;
  }

  @override
  void update(void Function(InclinacaoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InclinacaoRecord build() {
    final _$result = _$v ??
        new _$InclinacaoRecord._(
            naoPossui: naoPossui,
            cinco: cinco,
            dez: dez,
            quinze: quinze,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

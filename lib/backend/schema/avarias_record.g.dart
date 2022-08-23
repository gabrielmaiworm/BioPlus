// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avarias_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvariasRecord> _$avariasRecordSerializer =
    new _$AvariasRecordSerializer();

class _$AvariasRecordSerializer implements StructuredSerializer<AvariasRecord> {
  @override
  final Iterable<Type> types = const [AvariasRecord, _$AvariasRecord];
  @override
  final String wireName = 'AvariasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AvariasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.buraco;
    if (value != null) {
      result
        ..add('buraco')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.entulho;
    if (value != null) {
      result
        ..add('entulho')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.poste;
    if (value != null) {
      result
        ..add('poste')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.outros;
    if (value != null) {
      result
        ..add('outros')
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
  AvariasRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvariasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'buraco':
          result.buraco = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'entulho':
          result.entulho = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'poste':
          result.poste = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'outros':
          result.outros = serializers.deserialize(value,
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

class _$AvariasRecord extends AvariasRecord {
  @override
  final bool buraco;
  @override
  final bool entulho;
  @override
  final bool poste;
  @override
  final bool outros;
  @override
  final DocumentReference<Object> reference;

  factory _$AvariasRecord([void Function(AvariasRecordBuilder) updates]) =>
      (new AvariasRecordBuilder()..update(updates)).build();

  _$AvariasRecord._(
      {this.buraco, this.entulho, this.poste, this.outros, this.reference})
      : super._();

  @override
  AvariasRecord rebuild(void Function(AvariasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvariasRecordBuilder toBuilder() => new AvariasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvariasRecord &&
        buraco == other.buraco &&
        entulho == other.entulho &&
        poste == other.poste &&
        outros == other.outros &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, buraco.hashCode), entulho.hashCode), poste.hashCode),
            outros.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AvariasRecord')
          ..add('buraco', buraco)
          ..add('entulho', entulho)
          ..add('poste', poste)
          ..add('outros', outros)
          ..add('reference', reference))
        .toString();
  }
}

class AvariasRecordBuilder
    implements Builder<AvariasRecord, AvariasRecordBuilder> {
  _$AvariasRecord _$v;

  bool _buraco;
  bool get buraco => _$this._buraco;
  set buraco(bool buraco) => _$this._buraco = buraco;

  bool _entulho;
  bool get entulho => _$this._entulho;
  set entulho(bool entulho) => _$this._entulho = entulho;

  bool _poste;
  bool get poste => _$this._poste;
  set poste(bool poste) => _$this._poste = poste;

  bool _outros;
  bool get outros => _$this._outros;
  set outros(bool outros) => _$this._outros = outros;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AvariasRecordBuilder() {
    AvariasRecord._initializeBuilder(this);
  }

  AvariasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buraco = $v.buraco;
      _entulho = $v.entulho;
      _poste = $v.poste;
      _outros = $v.outros;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvariasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvariasRecord;
  }

  @override
  void update(void Function(AvariasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AvariasRecord build() {
    final _$result = _$v ??
        new _$AvariasRecord._(
            buraco: buraco,
            entulho: entulho,
            poste: poste,
            outros: outros,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

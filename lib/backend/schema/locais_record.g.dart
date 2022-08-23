// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locais_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocaisRecord> _$locaisRecordSerializer =
    new _$LocaisRecordSerializer();

class _$LocaisRecordSerializer implements StructuredSerializer<LocaisRecord> {
  @override
  final Iterable<Type> types = const [LocaisRecord, _$LocaisRecord];
  @override
  final String wireName = 'LocaisRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LocaisRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.hasChairWheel;
    if (value != null) {
      result
        ..add('hasChairWheel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasHandicappedHelp;
    if (value != null) {
      result
        ..add('hasHandicappedHelp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasInterpreter;
    if (value != null) {
      result
        ..add('hasInterpreter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasSpecialFurniture;
    if (value != null) {
      result
        ..add('hasSpecialFurniture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idLocal;
    if (value != null) {
      result
        ..add('idLocal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nota;
    if (value != null) {
      result
        ..add('nota')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectId;
    if (value != null) {
      result
        ..add('objectId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone1;
    if (value != null) {
      result
        ..add('phone1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placeId;
    if (value != null) {
      result
        ..add('placeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.types;
    if (value != null) {
      result
        ..add('types')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vaga;
    if (value != null) {
      result
        ..add('vaga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.validatedBy;
    if (value != null) {
      result
        ..add('validatedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vicinity;
    if (value != null) {
      result
        ..add('vicinity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lng2;
    if (value != null) {
      result
        ..add('lng2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat2;
    if (value != null) {
      result
        ..add('lat2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LocaisRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocaisRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'hasChairWheel':
          result.hasChairWheel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasHandicappedHelp':
          result.hasHandicappedHelp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasInterpreter':
          result.hasInterpreter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasSpecialFurniture':
          result.hasSpecialFurniture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idLocal':
          result.idLocal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nota':
          result.nota = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'objectId':
          result.objectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone1':
          result.phone1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'placeId':
          result.placeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'types':
          result.types = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vaga':
          result.vaga = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'validatedBy':
          result.validatedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vicinity':
          result.vicinity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lng2':
          result.lng2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat2':
          result.lat2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$LocaisRecord extends LocaisRecord {
  @override
  final String hasChairWheel;
  @override
  final String hasHandicappedHelp;
  @override
  final String hasInterpreter;
  @override
  final String hasSpecialFurniture;
  @override
  final String idLocal;
  @override
  final String name;
  @override
  final String nota;
  @override
  final String objectId;
  @override
  final String phone1;
  @override
  final String placeId;
  @override
  final String types;
  @override
  final String vaga;
  @override
  final String validatedBy;
  @override
  final String vicinity;
  @override
  final String foto;
  @override
  final String lng2;
  @override
  final String lat2;
  @override
  final DocumentReference<Object> reference;

  factory _$LocaisRecord([void Function(LocaisRecordBuilder) updates]) =>
      (new LocaisRecordBuilder()..update(updates)).build();

  _$LocaisRecord._(
      {this.hasChairWheel,
      this.hasHandicappedHelp,
      this.hasInterpreter,
      this.hasSpecialFurniture,
      this.idLocal,
      this.name,
      this.nota,
      this.objectId,
      this.phone1,
      this.placeId,
      this.types,
      this.vaga,
      this.validatedBy,
      this.vicinity,
      this.foto,
      this.lng2,
      this.lat2,
      this.reference})
      : super._();

  @override
  LocaisRecord rebuild(void Function(LocaisRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocaisRecordBuilder toBuilder() => new LocaisRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocaisRecord &&
        hasChairWheel == other.hasChairWheel &&
        hasHandicappedHelp == other.hasHandicappedHelp &&
        hasInterpreter == other.hasInterpreter &&
        hasSpecialFurniture == other.hasSpecialFurniture &&
        idLocal == other.idLocal &&
        name == other.name &&
        nota == other.nota &&
        objectId == other.objectId &&
        phone1 == other.phone1 &&
        placeId == other.placeId &&
        types == other.types &&
        vaga == other.vaga &&
        validatedBy == other.validatedBy &&
        vicinity == other.vicinity &&
        foto == other.foto &&
        lng2 == other.lng2 &&
        lat2 == other.lat2 &&
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
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            hasChairWheel
                                                                                .hashCode),
                                                                        hasHandicappedHelp
                                                                            .hashCode),
                                                                    hasInterpreter
                                                                        .hashCode),
                                                                hasSpecialFurniture
                                                                    .hashCode),
                                                            idLocal.hashCode),
                                                        name.hashCode),
                                                    nota.hashCode),
                                                objectId.hashCode),
                                            phone1.hashCode),
                                        placeId.hashCode),
                                    types.hashCode),
                                vaga.hashCode),
                            validatedBy.hashCode),
                        vicinity.hashCode),
                    foto.hashCode),
                lng2.hashCode),
            lat2.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocaisRecord')
          ..add('hasChairWheel', hasChairWheel)
          ..add('hasHandicappedHelp', hasHandicappedHelp)
          ..add('hasInterpreter', hasInterpreter)
          ..add('hasSpecialFurniture', hasSpecialFurniture)
          ..add('idLocal', idLocal)
          ..add('name', name)
          ..add('nota', nota)
          ..add('objectId', objectId)
          ..add('phone1', phone1)
          ..add('placeId', placeId)
          ..add('types', types)
          ..add('vaga', vaga)
          ..add('validatedBy', validatedBy)
          ..add('vicinity', vicinity)
          ..add('foto', foto)
          ..add('lng2', lng2)
          ..add('lat2', lat2)
          ..add('reference', reference))
        .toString();
  }
}

class LocaisRecordBuilder
    implements Builder<LocaisRecord, LocaisRecordBuilder> {
  _$LocaisRecord _$v;

  String _hasChairWheel;
  String get hasChairWheel => _$this._hasChairWheel;
  set hasChairWheel(String hasChairWheel) =>
      _$this._hasChairWheel = hasChairWheel;

  String _hasHandicappedHelp;
  String get hasHandicappedHelp => _$this._hasHandicappedHelp;
  set hasHandicappedHelp(String hasHandicappedHelp) =>
      _$this._hasHandicappedHelp = hasHandicappedHelp;

  String _hasInterpreter;
  String get hasInterpreter => _$this._hasInterpreter;
  set hasInterpreter(String hasInterpreter) =>
      _$this._hasInterpreter = hasInterpreter;

  String _hasSpecialFurniture;
  String get hasSpecialFurniture => _$this._hasSpecialFurniture;
  set hasSpecialFurniture(String hasSpecialFurniture) =>
      _$this._hasSpecialFurniture = hasSpecialFurniture;

  String _idLocal;
  String get idLocal => _$this._idLocal;
  set idLocal(String idLocal) => _$this._idLocal = idLocal;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nota;
  String get nota => _$this._nota;
  set nota(String nota) => _$this._nota = nota;

  String _objectId;
  String get objectId => _$this._objectId;
  set objectId(String objectId) => _$this._objectId = objectId;

  String _phone1;
  String get phone1 => _$this._phone1;
  set phone1(String phone1) => _$this._phone1 = phone1;

  String _placeId;
  String get placeId => _$this._placeId;
  set placeId(String placeId) => _$this._placeId = placeId;

  String _types;
  String get types => _$this._types;
  set types(String types) => _$this._types = types;

  String _vaga;
  String get vaga => _$this._vaga;
  set vaga(String vaga) => _$this._vaga = vaga;

  String _validatedBy;
  String get validatedBy => _$this._validatedBy;
  set validatedBy(String validatedBy) => _$this._validatedBy = validatedBy;

  String _vicinity;
  String get vicinity => _$this._vicinity;
  set vicinity(String vicinity) => _$this._vicinity = vicinity;

  String _foto;
  String get foto => _$this._foto;
  set foto(String foto) => _$this._foto = foto;

  String _lng2;
  String get lng2 => _$this._lng2;
  set lng2(String lng2) => _$this._lng2 = lng2;

  String _lat2;
  String get lat2 => _$this._lat2;
  set lat2(String lat2) => _$this._lat2 = lat2;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LocaisRecordBuilder() {
    LocaisRecord._initializeBuilder(this);
  }

  LocaisRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasChairWheel = $v.hasChairWheel;
      _hasHandicappedHelp = $v.hasHandicappedHelp;
      _hasInterpreter = $v.hasInterpreter;
      _hasSpecialFurniture = $v.hasSpecialFurniture;
      _idLocal = $v.idLocal;
      _name = $v.name;
      _nota = $v.nota;
      _objectId = $v.objectId;
      _phone1 = $v.phone1;
      _placeId = $v.placeId;
      _types = $v.types;
      _vaga = $v.vaga;
      _validatedBy = $v.validatedBy;
      _vicinity = $v.vicinity;
      _foto = $v.foto;
      _lng2 = $v.lng2;
      _lat2 = $v.lat2;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocaisRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocaisRecord;
  }

  @override
  void update(void Function(LocaisRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocaisRecord build() {
    final _$result = _$v ??
        new _$LocaisRecord._(
            hasChairWheel: hasChairWheel,
            hasHandicappedHelp: hasHandicappedHelp,
            hasInterpreter: hasInterpreter,
            hasSpecialFurniture: hasSpecialFurniture,
            idLocal: idLocal,
            name: name,
            nota: nota,
            objectId: objectId,
            phone1: phone1,
            placeId: placeId,
            types: types,
            vaga: vaga,
            validatedBy: validatedBy,
            vicinity: vicinity,
            foto: foto,
            lng2: lng2,
            lat2: lat2,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

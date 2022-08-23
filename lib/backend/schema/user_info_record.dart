import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_info_record.g.dart';

abstract class UserInfoRecord
    implements Built<UserInfoRecord, UserInfoRecordBuilder> {
  static Serializer<UserInfoRecord> get serializer =>
      _$userInfoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'criado_por')
  DocumentReference get criadoPor;

  @nullable
  String get telefone;

  @nullable
  int get cpf;

  @nullable
  String get deficiencia;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserInfoRecordBuilder builder) => builder
    ..telefone = ''
    ..cpf = 0
    ..deficiencia = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_info');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserInfoRecord._();
  factory UserInfoRecord([void Function(UserInfoRecordBuilder) updates]) =
      _$UserInfoRecord;

  static UserInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserInfoRecordData({
  DocumentReference criadoPor,
  String telefone,
  int cpf,
  String deficiencia,
}) =>
    serializers.toFirestore(
        UserInfoRecord.serializer,
        UserInfoRecord((u) => u
          ..criadoPor = criadoPor
          ..telefone = telefone
          ..cpf = cpf
          ..deficiencia = deficiencia));

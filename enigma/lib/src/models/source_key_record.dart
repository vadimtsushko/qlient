/// This file was autogenerated

library source_key_record;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
part 'source_key_record.g.dart';

abstract class SourceKeyRecord
    implements Built<SourceKeyRecord, SourceKeyRecordBuilder> {
  static Serializer<SourceKeyRecord> get serializer =>
      _$sourceKeyRecordSerializer;

  /// Name of the key field.
  /// Original name: qKeyFields
  @nullable
  @BuiltValueField(wireName: 'qKeyFields')
  BuiltList<String> get keyFields;

  /// Table the key belongs to.
  /// Original name: qTables
  @nullable
  @BuiltValueField(wireName: 'qTables')
  BuiltList<String> get tables;

  factory SourceKeyRecord([updates(SourceKeyRecordBuilder b)]) =
      _$SourceKeyRecord;

  factory SourceKeyRecord.init(
      {BuiltList<String> keyFields,
      BuiltList<String> tables}) = _$SourceKeyRecord._;

  SourceKeyRecord._();
}
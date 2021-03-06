/// This file was autogenerated

library field_def_ex;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'field_def_ex.g.dart';

abstract class FieldDefEx implements Built<FieldDefEx, FieldDefExBuilder> {
  static Serializer<FieldDefEx> get serializer => _$fieldDefExSerializer;

  /// Name of the field.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// Type of data entity.
  ///
  /// One of:
  /// * NOT_PRESENT
  /// * PRESENT
  /// * IS_CYCLIC_GROUP
  /// * IS_DRILL_GROUP
  /// * IS_VAR
  /// * IS_EXPR
  /// * IS_IMPLICIT
  /// * IS_DETAIL
  /// Original name: qType
  @nullable
  @BuiltValueField(wireName: 'qType')
  String get type;

  factory FieldDefEx([updates(FieldDefExBuilder b)]) = _$FieldDefEx;

  factory FieldDefEx.init({String name, String type}) = _$FieldDefEx._;

  FieldDefEx._();
}

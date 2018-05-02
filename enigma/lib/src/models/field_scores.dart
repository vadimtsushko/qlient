/// This file was autogenerated

library field_scores;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'field_scores.g.dart';

abstract class FieldScores implements Built<FieldScores, FieldScoresBuilder> {
  static Serializer<FieldScores> get serializer => _$fieldScoresSerializer;

  /// Field name.
  /// One of the field names defined in _qFieldPairName._
  /// Original name: qFieldName
  @nullable
  @BuiltValueField(wireName: 'qFieldName')
  String get fieldName;

  /// Original name: qReadableName
  @nullable
  @BuiltValueField(wireName: 'qReadableName')
  String get readableName;

  /// Cardinality of a column/field divided by the number of rows in the table.
  /// If the cardinal ratio is 1, it means that the column is a candidate/primary key.
  /// Original name: qCardinalRatio
  @nullable
  @BuiltValueField(wireName: 'qCardinalRatio')
  num get cardinalRatio;

  /// Number of distinct matches between the two fields defined in _qFieldPairName_ divided by the number of distinct values in the field _qFieldName_ .
  /// If 0, it means that there are no common values between the two fields defined in _qFieldPairName_ .
  /// Original name: qSymbolScore
  @nullable
  @BuiltValueField(wireName: 'qSymbolScore')
  num get symbolScore;

  /// Number of matches between the two fields defined in _qFieldPairName_ divided by the number of values in the field _qFieldName_ .
  /// If 0, it means that there are no common values between the two fields defined in _qFieldPairName_ .
  /// Original name: qRowScore
  @nullable
  @BuiltValueField(wireName: 'qRowScore')
  num get rowScore;

  factory FieldScores([updates(FieldScoresBuilder b)]) = _$FieldScores;

  factory FieldScores.init(
      {String fieldName,
      String readableName,
      num cardinalRatio,
      num symbolScore,
      num rowScore}) = _$FieldScores._;

  FieldScores._();
}
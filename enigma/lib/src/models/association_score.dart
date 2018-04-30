/// This file was autogenerated

library association_score;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'field_scores.dart';
part 'association_score.g.dart';

abstract class AssociationScore
    implements Built<AssociationScore, AssociationScoreBuilder> {
  static Serializer<AssociationScore> get serializer =>
      _$associationScoreSerializer;

  /// Pair of fields.
  /// _&lt; FieldName1&gt;_ / _&lt; FieldName2&gt;_
  /// Where:
  /// &lt; _FieldName1_ &gt; is a field in the table 1 (defined in _qTable1_ )
  /// &lt; _FieldName2_ &gt; is a field in the table 2 (defined in _qTable2_ )
  /// If the field is a synthetic key, the name of the field is preceded by _[Synthetic key]:_ .
  /// Original name: qFieldPairName
  @nullable
  @BuiltValueField(wireName: 'qFieldPairName')
  String get fieldPairName;

  /// Flag used to interpret calculated scores.
  /// One of the following values or sum of values that apply:
  /// * 0: The cardinal ratio cannot be zero but the symbol score and the row score can be zero.
  /// * -1: The fields do not have the same type.
  /// * -2: The number of rows of the field _FieldName1_ is zero.
  /// * -4: The number of distinct values of the field _FieldName1_ is zero.
  /// * -8: The number of rows of the field _FieldName2_ is zero.
  /// * -16: The number of distinct values of the field _FieldName2_ is zero.
  ///
  /// Example:
  /// The number of rows of the field _FieldName1_ is zero, and the number of distinct values of the field _FieldName2_ is zero, then _qScoreSummary_ is -18.
  /// Original name: qScoreSummary
  @nullable
  @BuiltValueField(wireName: 'qScoreSummary')
  int get scoreSummary;

  /// Association information about the field _FieldName1_ defined in _qFieldPairName_ .
  /// Original name: qField1Scores
  @nullable
  @BuiltValueField(wireName: 'qField1Scores')
  FieldScores get field1Scores;

  /// Association information about the field _FieldName2_ defined in _qFieldPairName_ .
  /// Original name: qField2Scores
  @nullable
  @BuiltValueField(wireName: 'qField2Scores')
  FieldScores get field2Scores;

  factory AssociationScore([updates(AssociationScoreBuilder b)]) =
      _$AssociationScore;

  factory AssociationScore.init(
      {String fieldPairName,
      int scoreSummary,
      FieldScores field1Scores,
      FieldScores field2Scores}) = _$AssociationScore._;

  AssociationScore._();
}

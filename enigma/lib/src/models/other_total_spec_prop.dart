/// This file was autogenerated

library other_total_spec_prop;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'value_expr.dart';
import 'string_expr.dart';
part 'other_total_spec_prop.g.dart';

abstract class OtherTotalSpecProp
    implements Built<OtherTotalSpecProp, OtherTotalSpecPropBuilder> {
  static Serializer<OtherTotalSpecProp> get serializer =>
      _$otherTotalSpecPropSerializer;

  /// Determines how many dimension values are displayed.
  /// The default value is _OTHER_OFF_ .
  ///
  /// One of:
  /// * OTHER_OFF
  /// * OTHER_COUNTED
  /// * OTHER_ABS_LIMITED
  /// * OTHER_ABS_ACC_TARGET
  /// * OTHER_REL_LIMITED
  /// * OTHER_REL_ACC_TARGET
  /// Original name: qOtherMode
  @nullable
  @BuiltValueField(wireName: 'qOtherMode')
  String get otherMode;

  /// Number of values to display. The number of values can be entered as a calculated formula.
  /// This parameter is used when _qOtherMode_ is set to _OTHER_COUNTED_ .
  /// Original name: qOtherCounted
  @nullable
  @BuiltValueField(wireName: 'qOtherCounted')
  ValueExpr get otherCounted;

  /// Value used to limit the dimension values. The limit can be entered as a calculated formula.
  /// This parameter is used when _qOtherMode_ is set to:
  /// * OTHER_ABS_LIMITED
  /// * OTHER_REL_LIMITED
  /// * OTHER_ABS_ACC_TARGET
  /// OTHER_REL_ACC_TARGET
  /// Original name: qOtherLimit
  @nullable
  @BuiltValueField(wireName: 'qOtherLimit')
  ValueExpr get otherLimit;

  /// Sets the limit for the _Others_ mode.
  /// This parameter is used when _qOtherMode_ is set to:
  /// * OTHER_ABS_LIMITED
  /// * OTHER_REL_LIMITED
  /// * OTHER_ABS_ACC_TARGET
  /// OTHER_REL_ACC_TARGET
  ///
  /// One of:
  /// * OTHER_GE_LIMIT
  /// * OTHER_LE_LIMIT
  /// * OTHER_GT_LIMIT
  /// * OTHER_LT_LIMIT
  /// Original name: qOtherLimitMode
  @nullable
  @BuiltValueField(wireName: 'qOtherLimitMode')
  String get otherLimitMode;

  /// If set to true, the group _Others_ is not displayed as a dimension value.
  /// The default value is false.
  /// Original name: qSuppressOther
  @nullable
  @BuiltValueField(wireName: 'qSuppressOther')
  bool get suppressOther;

  /// This parameter is used when _qOtherMode_ is set to:
  /// * OTHER_ABS_LIMITED
  /// * OTHER_REL_LIMITED
  /// * OTHER_ABS_ACC_TARGET
  /// OTHER_REL_ACC_TARGET
  ///
  /// and when the dimension values include not numeric values.
  /// Set this parameter to true to include text values in the returned values.
  /// The default value is true.
  /// Original name: qForceBadValueKeeping
  @nullable
  @BuiltValueField(wireName: 'qForceBadValueKeeping')
  bool get forceBadValueKeeping;

  /// Set this parameter to true to allow the calculation of _Others_ even if the engine detects some potential mistakes.
  /// For example the country Russia is part of the continent Europe and Asia. If you have an hypercube with two dimensions Country and Continent and one measure Population, the engine can detect that the population of Russia is included in both the continent Asia and Europe.
  /// The default value is true.
  /// Original name: qApplyEvenWhenPossiblyWrongResult
  @nullable
  @BuiltValueField(wireName: 'qApplyEvenWhenPossiblyWrongResult')
  bool get applyEvenWhenPossiblyWrongResult;

  /// This parameter applies to inner dimensions.
  /// If this parameter is set to true, the restrictions are calculated on the selected dimension only. All previous dimensions are ignored.
  /// The default value is false.
  /// Original name: qGlobalOtherGrouping
  @nullable
  @BuiltValueField(wireName: 'qGlobalOtherGrouping')
  bool get globalOtherGrouping;

  /// If set to true, it collapses the inner dimensions (if any) in the group _Others_ .
  /// The default value is false.
  /// Original name: qOtherCollapseInnerDimensions
  @nullable
  @BuiltValueField(wireName: 'qOtherCollapseInnerDimensions')
  bool get otherCollapseInnerDimensions;

  /// Defines the sort order of the dimension values.
  /// The default value is _OTHER_SORT_DESCENDING_ .
  ///
  /// One of:
  /// * OTHER_SORT_DEFAULT
  /// * OTHER_SORT_DESCENDING
  /// * OTHER_SORT_ASCENDING
  /// Original name: qOtherSortMode
  @nullable
  @BuiltValueField(wireName: 'qOtherSortMode')
  String get otherSortMode;

  /// If set to _TOTAL_EXPR_ , the total of the dimension values is returned.
  /// The default value is _TOTAL_OFF_ .
  ///
  /// One of:
  /// * TOTAL_OFF
  /// * TOTAL_EXPR
  /// Original name: qTotalMode
  @nullable
  @BuiltValueField(wireName: 'qTotalMode')
  String get totalMode;

  /// This parameter applies when there are several measures.
  /// Name of the measure to use for the calculation of _Others_ for a specific dimension.
  /// Original name: qReferencedExpression
  @nullable
  @BuiltValueField(wireName: 'qReferencedExpression')
  StringExpr get referencedExpression;

  factory OtherTotalSpecProp([updates(OtherTotalSpecPropBuilder b)]) =
      _$OtherTotalSpecProp;

  factory OtherTotalSpecProp.init(
      {String otherMode,
      ValueExpr otherCounted,
      ValueExpr otherLimit,
      String otherLimitMode,
      bool suppressOther,
      bool forceBadValueKeeping,
      bool applyEvenWhenPossiblyWrongResult,
      bool globalOtherGrouping,
      bool otherCollapseInnerDimensions,
      String otherSortMode,
      String totalMode,
      StringExpr referencedExpression}) = _$OtherTotalSpecProp._;

  OtherTotalSpecProp._();
}

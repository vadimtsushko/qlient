/// This file was autogenerated

library nx_inline_measure_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'field_attributes.dart';
part 'nx_inline_measure_def.g.dart';

abstract class NxInlineMeasureDef
    implements Built<NxInlineMeasureDef, NxInlineMeasureDefBuilder> {
  static Serializer<NxInlineMeasureDef> get serializer =>
      _$nxInlineMeasureDefSerializer;

  /// Name of the measure.
  /// An empty string is returned as a default value.
  /// This parameter is optional.
  /// Original name: qLabel
  @nullable
  @BuiltValueField(wireName: 'qLabel')
  String get label;

  /// Description of the measure.
  /// An empty string is returned as a default value.
  /// This parameter is optional.
  /// Original name: qDescription
  @nullable
  @BuiltValueField(wireName: 'qDescription')
  String get description;

  /// Name connected to the measure that is used for search purposes.
  /// A measure can have several tags.
  /// This parameter is optional.
  /// Original name: qTags
  @nullable
  @BuiltValueField(wireName: 'qTags')
  BuiltList<String> get tags;

  /// Default value is no grouping.
  /// This parameter is optional.
  ///
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  @BuiltValueField(wireName: 'qGrouping')
  String get grouping;

  /// Definition of the expression in the measure.
  /// Example: _Sum (OrderTotal)_
  /// This parameter is mandatory.
  /// Original name: qDef
  @nullable
  @BuiltValueField(wireName: 'qDef')
  String get def;

  /// Format of the field.
  /// This parameter is optional.
  /// Original name: qNumFormat
  @nullable
  @BuiltValueField(wireName: 'qNumFormat')
  FieldAttributes get numFormat;

  /// If set to true, percentage values are returned instead of absolute numbers.
  /// Default value is false.
  /// This parameter is optional.
  /// Original name: qRelative
  @nullable
  @BuiltValueField(wireName: 'qRelative')
  bool get relative;

  /// If set to true, the sum of rows total should be used rather than real expression total.
  /// This parameter is optional and applies to straight tables.
  /// Default value is false.
  /// If using the Qlik Sense interface, it means that the total mode is set to **Expression Total** .
  /// Original name: qBrutalSum
  @nullable
  @BuiltValueField(wireName: 'qBrutalSum')
  bool get brutalSum;

  /// Aggregate function.
  /// For more information on the aggregate function syntax, see the section Working with Qlik Sense on the online help portal.
  /// The default value is 0 (Sum of rows)
  /// This parameter is optional.
  /// Original name: qAggrFunc
  @nullable
  @BuiltValueField(wireName: 'qAggrFunc')
  String get aggrFunc;

  /// * 0 means no accumulation
  ///                             * 1 means full accumulation (each y-value accumulates all previous y-values of the expression)
  ///                             * ≥ 2 means accumulate as many steps as the _qAccumulate_ value
  /// Default value is 0.
  /// This parameter is optional.
  /// Original name: qAccumulate
  @nullable
  @BuiltValueField(wireName: 'qAccumulate')
  int get accumulate;

  /// If set to true, it inverts the sort criteria in the field.
  /// Original name: qReverseSort
  @nullable
  @BuiltValueField(wireName: 'qReverseSort')
  bool get reverseSort;

  /// Index of the active expression in a cyclic measure. The indexing starts from 0.
  /// The default value is 0.
  /// This parameter is optional.
  /// Original name: qActiveExpression
  @nullable
  @BuiltValueField(wireName: 'qActiveExpression')
  int get activeExpression;

  /// Array of expressions. This parameter is used in case of cyclic measures ( _qGrouping_ is C). List of the expressions in the cyclic group.
  /// Original name: qExpressions
  @nullable
  @BuiltValueField(wireName: 'qExpressions')
  BuiltList<String> get expressions;

  /// Label expression.
  /// This parameter is optional.
  /// Original name: qLabelExpression
  @nullable
  @BuiltValueField(wireName: 'qLabelExpression')
  String get labelExpression;

  factory NxInlineMeasureDef([updates(NxInlineMeasureDefBuilder b)]) =
      _$NxInlineMeasureDef;

  factory NxInlineMeasureDef.init(
      {String label,
      String description,
      BuiltList<String> tags,
      String grouping,
      String def,
      FieldAttributes numFormat,
      bool relative,
      bool brutalSum,
      String aggrFunc,
      int accumulate,
      bool reverseSort,
      int activeExpression,
      BuiltList<String> expressions,
      String labelExpression}) = _$NxInlineMeasureDef._;

  NxInlineMeasureDef._();
}
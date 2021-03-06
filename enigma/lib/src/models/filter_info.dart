/// This file was autogenerated

library filter_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'filter_info.g.dart';

abstract class FilterInfo implements Built<FilterInfo, FilterInfoBuilder> {
  static Serializer<FilterInfo> get serializer => _$filterInfoSerializer;

  ///
  /// One of:
  /// * NONE or FILTER_TYPE_NONE
  /// * RAW or FILTER_TYPE_RAW
  /// Original name: qType
  @nullable
  @BuiltValueField(wireName: 'qType')
  String get type;

  /// Original name: qWherePredicate
  @nullable
  @BuiltValueField(wireName: 'qWherePredicate')
  String get wherePredicate;

  factory FilterInfo([updates(FilterInfoBuilder b)]) = _$FilterInfo;

  factory FilterInfo.init({String type, String wherePredicate}) =
      _$FilterInfo._;

  FilterInfo._();
}

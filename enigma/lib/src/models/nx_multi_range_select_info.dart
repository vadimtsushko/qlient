/// This file was autogenerated

library nx_multi_range_select_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_multi_range_select_info.g.dart';

abstract class NxMultiRangeSelectInfo
    implements Built<NxMultiRangeSelectInfo, NxMultiRangeSelectInfoBuilder> {
  static Serializer<NxMultiRangeSelectInfo> get serializer =>
      _$nxMultiRangeSelectInfoSerializer;

  /// Original name: qRanges
  @nullable
  @BuiltValueField(wireName: 'qRanges')
  BuiltList<NxCell> get ranges;

  /// Original name: qColumnsToSelect
  @nullable
  @BuiltValueField(wireName: 'qColumnsToSelect')
  BuiltList<NxCell> get columnsToSelect;

  factory NxMultiRangeSelectInfo([updates(NxMultiRangeSelectInfoBuilder b)]) =
      _$NxMultiRangeSelectInfo;

  factory NxMultiRangeSelectInfo.init(
      {BuiltList<NxCell> ranges,
      BuiltList<NxCell> columnsToSelect}) = _$NxMultiRangeSelectInfo._;

  NxMultiRangeSelectInfo._();
}

/// This file was autogenerated

library dimension_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_container_entry.dart';
import 'package:built_collection/built_collection.dart';
part 'dimension_list.g.dart';

/// Lists the dimensions. Is the layout for _DimensionListDef_.
abstract class DimensionList
    implements Built<DimensionList, DimensionListBuilder> {
  static Serializer<DimensionList> get serializer => _$dimensionListSerializer;

  /// Information about the list of dimensions.
  /// Original name: qItems
  @nullable
  @BuiltValueField(wireName: 'qItems')
  BuiltList<NxContainerEntry> get items;

  factory DimensionList([updates(DimensionListBuilder b)]) = _$DimensionList;

  factory DimensionList.init({BuiltList<NxContainerEntry> items}) =
      _$DimensionList._;

  DimensionList._();
}

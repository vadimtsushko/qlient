/// This file was autogenerated

library field_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'field_list.g.dart';

/// Lists the fields present in the data model viewer. Is the layout for _FieldListDef_.
abstract class FieldList implements Built<FieldList, FieldListBuilder> {
  static Serializer<FieldList> get serializer => _$fieldListSerializer;

  /// Array of items.
  /// Original name: qItems
  @nullable
  @BuiltValueField(wireName: 'qItems')
  BuiltList<NxCell> get items;

  factory FieldList([updates(FieldListBuilder b)]) = _$FieldList;

  factory FieldList.init({BuiltList<NxCell> items}) = _$FieldList._;

  FieldList._();
}

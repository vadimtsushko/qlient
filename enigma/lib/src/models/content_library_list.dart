/// This file was autogenerated

library content_library_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'content_library_list_item.dart';
import 'package:built_collection/built_collection.dart';
part 'content_library_list.g.dart';

abstract class ContentLibraryList
    implements Built<ContentLibraryList, ContentLibraryListBuilder> {
  static Serializer<ContentLibraryList> get serializer =>
      _$contentLibraryListSerializer;

  /// Information about the content library.
  /// Original name: qItems
  @nullable
  @BuiltValueField(wireName: 'qItems')
  BuiltList<ContentLibraryListItem> get items;

  factory ContentLibraryList([updates(ContentLibraryListBuilder b)]) =
      _$ContentLibraryList;

  factory ContentLibraryList.init({BuiltList<ContentLibraryListItem> items}) =
      _$ContentLibraryList._;

  ContentLibraryList._();
}

/// This file was autogenerated

library nx_bookmark;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'alternate_state_data.dart';
import 'package:built_collection/built_collection.dart';
import 'bookmark_variable_item.dart';
part 'nx_bookmark.g.dart';

abstract class NxBookmark implements Built<NxBookmark, NxBookmarkBuilder> {
  static Serializer<NxBookmark> get serializer => _$nxBookmarkSerializer;

  /// List of selections for each state.
  /// Original name: qStateData
  @nullable
  @BuiltValueField(wireName: 'qStateData')
  BuiltList<AlternateStateData> get stateData;

  /// Time when the bookmark was created.
  /// Original name: qUtcModifyTime
  @nullable
  @BuiltValueField(wireName: 'qUtcModifyTime')
  num get utcModifyTime;

  /// List of the variables in the app at the time the bookmark was created.
  /// Original name: qVariableItems
  @nullable
  @BuiltValueField(wireName: 'qVariableItems')
  BuiltList<BookmarkVariableItem> get variableItems;

  factory NxBookmark([updates(NxBookmarkBuilder b)]) = _$NxBookmark;

  factory NxBookmark.init(
      {BuiltList<AlternateStateData> stateData,
      num utcModifyTime,
      BuiltList<BookmarkVariableItem> variableItems}) = _$NxBookmark._;

  NxBookmark._();
}

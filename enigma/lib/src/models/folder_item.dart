/// This file was autogenerated

library folder_item;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'folder_item.g.dart';

abstract class FolderItem implements Built<FolderItem, FolderItemBuilder> {
  static Serializer<FolderItem> get serializer => _$folderItemSerializer;

  /// Name of the folder item.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// Type of the folder item.
  ///
  /// One of:
  /// * FOLDER or FOLDER_ITEM_FOLDER
  /// * FILE or FOLDER_ITEM_FILE
  /// * OTHER or FOLDER_ITEM_OTHER
  /// Original name: qType
  @nullable
  @BuiltValueField(wireName: 'qType')
  String get type;

  factory FolderItem([updates(FolderItemBuilder b)]) = _$FolderItem;

  factory FolderItem.init({String name, String type}) = _$FolderItem._;

  FolderItem._();
}

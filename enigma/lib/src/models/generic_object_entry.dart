/// This file was autogenerated

library generic_object_entry;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'generic_object_properties.dart';
import 'generic_object_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'generic_bookmark_entry.dart';
part 'generic_object_entry.g.dart';

abstract class GenericObjectEntry
    implements Built<GenericObjectEntry, GenericObjectEntryBuilder> {
  static Serializer<GenericObjectEntry> get serializer =>
      _$genericObjectEntrySerializer;

  /// Information about the generic object properties.
  /// Original name: qProperty
  @nullable
  @BuiltValueField(wireName: 'qProperty')
  GenericObjectProperties get property;

  /// Information about the children of the generic object.
  /// Original name: qChildren
  @nullable
  @BuiltValueField(wireName: 'qChildren')
  BuiltList<GenericObjectEntry> get children;

  /// Reference to a bookmark/snapshot that is embedded in the generic object.
  /// Original name: qEmbeddedSnapshotRef
  @nullable
  @BuiltValueField(wireName: 'qEmbeddedSnapshotRef')
  GenericBookmarkEntry get embeddedSnapshotRef;

  factory GenericObjectEntry([updates(GenericObjectEntryBuilder b)]) =
      _$GenericObjectEntry;

  factory GenericObjectEntry.init(
      {GenericObjectProperties property,
      BuiltList<GenericObjectEntry> children,
      GenericBookmarkEntry embeddedSnapshotRef}) = _$GenericObjectEntry._;

  GenericObjectEntry._();
}
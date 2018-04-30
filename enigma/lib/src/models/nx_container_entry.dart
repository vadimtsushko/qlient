/// This file was autogenerated

library nx_container_entry;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'nx_meta.dart';
import 'package:built_value/json_object.dart';
part 'nx_container_entry.g.dart';

abstract class NxContainerEntry
    implements Built<NxContainerEntry, NxContainerEntryBuilder> {
  static Serializer<NxContainerEntry> get serializer =>
      _$nxContainerEntrySerializer;

  /// Information about the object.
  /// Original name: qInfo
  @nullable
  @BuiltValueField(wireName: 'qInfo')
  NxInfo get info;

  /// Information on publishing and permissions.
  /// Original name: qMeta
  @nullable
  @BuiltValueField(wireName: 'qMeta')
  NxMeta get meta;

  /// Set of data.
  /// Original name: qData
  @nullable
  @BuiltValueField(wireName: 'qData')
  JsonObject get data;

  factory NxContainerEntry([updates(NxContainerEntryBuilder b)]) =
      _$NxContainerEntry;

  factory NxContainerEntry.init({NxInfo info, NxMeta meta, JsonObject data}) =
      _$NxContainerEntry._;

  NxContainerEntry._();
}

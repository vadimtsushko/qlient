/// This file was autogenerated

library generic_object_layout;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'nx_meta.dart';
import 'nx_layout_errors.dart';
import 'nx_selection_info.dart';
import 'app_object_list.dart';
import 'bookmark_list.dart';
import 'child_list.dart';
import 'dimension_list.dart';
import 'package:built_value/json_object.dart';
import 'extension_list.dart';
import 'field_list.dart';
import 'hyper_cube.dart';
import 'list_object.dart';
import 'measure_list.dart';
import 'media_list.dart';
import 'nx_library_dimension.dart';
import 'nx_library_measure.dart';
import 'selection_object.dart';
import 'static_content_url.dart';
import 'tree_data.dart';
import 'undo_info.dart';
import 'variable_list.dart';
part 'generic_object_layout.g.dart';

/// Is the layout for _GenericObjectProperties_.
abstract class GenericObjectLayout
    implements Built<GenericObjectLayout, GenericObjectLayoutBuilder> {
  static Serializer<GenericObjectLayout> get serializer =>
      _$genericObjectLayoutSerializer;

  /// Identifier and type of the generic object.
  /// Original name: qInfo
  @nullable
  @BuiltValueField(wireName: 'qInfo')
  NxInfo get info;

  /// Information about publishing and permissions.
  /// This parameter is optional.
  /// Original name: qMeta
  @nullable
  @BuiltValueField(wireName: 'qMeta')
  NxMeta get meta;

  /// Should be set to create an object that is linked to another object. Enter the identifier of the object you want to link to.
  /// If you do not want to link your object, set this parameter to an empty string.
  /// Original name: qExtendsId
  @nullable
  @BuiltValueField(wireName: 'qExtendsId')
  String get extendsId;

  /// Is set to true if the generic object contains some properties that are not persistent (a soft patch was applied).
  /// Original name: qHasSoftPatches
  @nullable
  @BuiltValueField(wireName: 'qHasSoftPatches')
  bool get hasSoftPatches;

  /// Gives information on the error.
  /// This parameter is optional.
  /// Original name: qError
  @nullable
  @BuiltValueField(wireName: 'qError')
  NxLayoutErrors get error;

  /// Information about the selections.
  /// Original name: qSelectionInfo
  @nullable
  @BuiltValueField(wireName: 'qSelectionInfo')
  NxSelectionInfo get selectionInfo;

  /// Original name: qAppObjectList
  @nullable
  @BuiltValueField(wireName: 'qAppObjectList')
  AppObjectList get appObjectList;

  /// Original name: qBookmarkList
  @nullable
  @BuiltValueField(wireName: 'qBookmarkList')
  BookmarkList get bookmarkList;

  /// Original name: qChildList
  @nullable
  @BuiltValueField(wireName: 'qChildList')
  ChildList get childList;

  /// Original name: qDimensionList
  @nullable
  @BuiltValueField(wireName: 'qDimensionList')
  DimensionList get dimensionList;

  /// Original name: qEmbeddedSnapshot
  @nullable
  @BuiltValueField(wireName: 'qEmbeddedSnapshot')
  JsonObject get embeddedSnapshot;

  /// Original name: qExtensionList
  @nullable
  @BuiltValueField(wireName: 'qExtensionList')
  ExtensionList get extensionList;

  /// Original name: qFieldList
  @nullable
  @BuiltValueField(wireName: 'qFieldList')
  FieldList get fieldList;

  /// Original name: qHyperCube
  @nullable
  @BuiltValueField(wireName: 'qHyperCube')
  HyperCube get hyperCube;

  /// Original name: qListObject
  @nullable
  @BuiltValueField(wireName: 'qListObject')
  ListObject get listObject;

  /// Original name: qMeasureList
  @nullable
  @BuiltValueField(wireName: 'qMeasureList')
  MeasureList get measureList;

  /// Original name: qMediaList
  @nullable
  @BuiltValueField(wireName: 'qMediaList')
  MediaList get mediaList;

  /// Original name: qNxLibraryDimension
  @nullable
  @BuiltValueField(wireName: 'qNxLibraryDimension')
  NxLibraryDimension get nxLibraryDimension;

  /// Original name: qNxLibraryMeasure
  @nullable
  @BuiltValueField(wireName: 'qNxLibraryMeasure')
  NxLibraryMeasure get nxLibraryMeasure;

  /// Original name: qSelectionObject
  @nullable
  @BuiltValueField(wireName: 'qSelectionObject')
  SelectionObject get selectionObject;

  /// Original name: qStaticContentUrl
  @nullable
  @BuiltValueField(wireName: 'qStaticContentUrl')
  StaticContentUrl get staticContentUrl;

  /// Original name: qTreeData
  @nullable
  @BuiltValueField(wireName: 'qTreeData')
  TreeData get treeData;

  /// Original name: qUndoInfo
  @nullable
  @BuiltValueField(wireName: 'qUndoInfo')
  UndoInfo get undoInfo;

  /// Original name: qVariableList
  @nullable
  @BuiltValueField(wireName: 'qVariableList')
  VariableList get variableList;

  factory GenericObjectLayout([updates(GenericObjectLayoutBuilder b)]) =
      _$GenericObjectLayout;

  factory GenericObjectLayout.init(
      {NxInfo info,
      NxMeta meta,
      String extendsId,
      bool hasSoftPatches,
      NxLayoutErrors error,
      NxSelectionInfo selectionInfo,
      AppObjectList appObjectList,
      BookmarkList bookmarkList,
      ChildList childList,
      DimensionList dimensionList,
      JsonObject embeddedSnapshot,
      ExtensionList extensionList,
      FieldList fieldList,
      HyperCube hyperCube,
      ListObject listObject,
      MeasureList measureList,
      MediaList mediaList,
      NxLibraryDimension nxLibraryDimension,
      NxLibraryMeasure nxLibraryMeasure,
      SelectionObject selectionObject,
      StaticContentUrl staticContentUrl,
      TreeData treeData,
      UndoInfo undoInfo,
      VariableList variableList}) = _$GenericObjectLayout._;

  GenericObjectLayout._();
}

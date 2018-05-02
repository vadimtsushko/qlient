/// This file was autogenerated

library generic_variable_properties;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'package:built_value/json_object.dart';
import 'field_attributes.dart';
part 'generic_variable_properties.g.dart';

abstract class GenericVariableProperties
    implements
        Built<GenericVariableProperties, GenericVariablePropertiesBuilder> {
  static Serializer<GenericVariableProperties> get serializer =>
      _$genericVariablePropertiesSerializer;

  /// Identifier and type of the object.
  /// This parameter is mandatory.
  /// Original name: qInfo
  @nullable
  @BuiltValueField(wireName: 'qInfo')
  NxInfo get info;

  /// Meta data.
  /// Original name: qMetaDef
  @nullable
  @BuiltValueField(wireName: 'qMetaDef')
  JsonObject get metaDef;

  /// Name of the variable.
  /// The name must be unique.
  /// This parameter is mandatory.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// Comment related to the variable.
  /// This parameter is optional.
  /// Original name: qComment
  @nullable
  @BuiltValueField(wireName: 'qComment')
  String get comment;

  /// Defines the format of the value.
  /// This parameter is optional.
  /// Original name: qNumberPresentation
  @nullable
  @BuiltValueField(wireName: 'qNumberPresentation')
  FieldAttributes get numberPresentation;

  /// Set this property to true to update the variable when applying a bookmark. The variable value will be persisted in the bookmark.
  /// The value of a variable can affect the state of the selections.
  /// Script variables cannot be persisted in the bookmark.
  /// The default value is false.
  /// Original name: qIncludeInBookmark
  @nullable
  @BuiltValueField(wireName: 'qIncludeInBookmark')
  bool get includeInBookmark;

  /// Definition of the variable.
  /// Original name: qDefinition
  @nullable
  @BuiltValueField(wireName: 'qDefinition')
  String get definition;

  factory GenericVariableProperties(
          [updates(GenericVariablePropertiesBuilder b)]) =
      _$GenericVariableProperties;

  factory GenericVariableProperties.init(
      {NxInfo info,
      JsonObject metaDef,
      String name,
      String comment,
      FieldAttributes numberPresentation,
      bool includeInBookmark,
      String definition}) = _$GenericVariableProperties._;

  GenericVariableProperties._();
}
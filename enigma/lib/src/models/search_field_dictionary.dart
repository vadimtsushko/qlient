/// This file was autogenerated

library search_field_dictionary;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'search_field_dictionary.g.dart';

abstract class SearchFieldDictionary
    implements Built<SearchFieldDictionary, SearchFieldDictionaryBuilder> {
  static Serializer<SearchFieldDictionary> get serializer =>
      _$searchFieldDictionarySerializer;

  /// Position of the field in the list of fields, starting from 0.
  /// The list of fields is defined in _qResults/qFieldNames_ and contains the search associations.
  /// Original name: qField
  @nullable
  @BuiltValueField(wireName: 'qField')
  int get field;

  /// List of the matching values.
  /// The maximum number of values in this list is set by _qMaxNbrFieldMatches_ .
  /// Original name: qResult
  @nullable
  @BuiltValueField(wireName: 'qResult')
  BuiltList<NxCell> get result;

  factory SearchFieldDictionary([updates(SearchFieldDictionaryBuilder b)]) =
      _$SearchFieldDictionary;

  factory SearchFieldDictionary.init({int field, BuiltList<NxCell> result}) =
      _$SearchFieldDictionary._;

  SearchFieldDictionary._();
}

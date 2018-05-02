/// This file was autogenerated

library search_association_result;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'search_field_dictionary.dart';
import 'search_match_combination.dart';
part 'search_association_result.g.dart';

abstract class SearchAssociationResult
    implements Built<SearchAssociationResult, SearchAssociationResultBuilder> {
  static Serializer<SearchAssociationResult> get serializer =>
      _$searchAssociationResultSerializer;

  /// List of the fields that contains search associations.
  /// Original name: qFieldNames
  @nullable
  @BuiltValueField(wireName: 'qFieldNames')
  BuiltList<String> get fieldNames;

  /// List of the search terms.
  /// Original name: qSearchTerms
  @nullable
  @BuiltValueField(wireName: 'qSearchTerms')
  BuiltList<String> get searchTerms;

  /// Information about the fields containing search hits.
  /// Original name: qFieldDictionaries
  @nullable
  @BuiltValueField(wireName: 'qFieldDictionaries')
  BuiltList<SearchFieldDictionary> get fieldDictionaries;

  /// List of search results.
  /// The maximum number of search results in this list is set by _qPage/qCount_ .
  /// Original name: qSearchTermsMatched
  @nullable
  @BuiltValueField(wireName: 'qSearchTermsMatched')
  BuiltList<BuiltList<SearchMatchCombination>> get searchTermsMatched;

  /// Total number of search results.
  /// This number is not limited by _qPage/qCount_ .
  /// Original name: qTotalSearchResults
  @nullable
  @BuiltValueField(wireName: 'qTotalSearchResults')
  int get totalSearchResults;

  factory SearchAssociationResult([updates(SearchAssociationResultBuilder b)]) =
      _$SearchAssociationResult;

  factory SearchAssociationResult.init(
      {BuiltList<String> fieldNames,
      BuiltList<String> searchTerms,
      BuiltList<SearchFieldDictionary> fieldDictionaries,
      BuiltList<BuiltList<SearchMatchCombination>> searchTermsMatched,
      int totalSearchResults}) = _$SearchAssociationResult._;

  SearchAssociationResult._();
}
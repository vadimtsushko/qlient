/// This file was autogenerated

library nx_current_selection_item;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'range_select_info.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_state_counts.dart';
import 'nx_field_selection_info.dart';
part 'nx_current_selection_item.g.dart';

abstract class NxCurrentSelectionItem
    implements Built<NxCurrentSelectionItem, NxCurrentSelectionItemBuilder> {
  static Serializer<NxCurrentSelectionItem> get serializer =>
      _$nxCurrentSelectionItemSerializer;

  /// Number of values in the field.
  /// Original name: qTotal
  @nullable
  @BuiltValueField(wireName: 'qTotal')
  int get total;

  /// This parameter is displayed if its value is true.
  /// Is set to true if the field is a numeric.
  /// This parameter is optional.
  /// Original name: qIsNum
  @nullable
  @BuiltValueField(wireName: 'qIsNum')
  bool get isNum;

  /// Name of the field that is selected.
  /// Original name: qField
  @nullable
  @BuiltValueField(wireName: 'qField')
  String get field;

  /// This parameter is displayed if its value is true.
  /// Is set to true if the field is locked.
  /// This parameter is optional.
  /// Original name: qLocked
  @nullable
  @BuiltValueField(wireName: 'qLocked')
  bool get locked;

  /// This parameter is displayed if its value is true.
  /// Property that is set to a field. Is set to true if the field cannot be unselected.
  /// This parameter is optional.
  /// Original name: qOneAndOnlyOne
  @nullable
  @BuiltValueField(wireName: 'qOneAndOnlyOne')
  bool get oneAndOnlyOne;

  /// Text that was used for the search. This parameter is filled when searching for a value and selecting it.
  /// This parameter is optional.
  /// Original name: qTextSearch
  @nullable
  @BuiltValueField(wireName: 'qTextSearch')
  String get textSearch;

  /// Number of values that are selected.
  /// Original name: qSelectedCount
  @nullable
  @BuiltValueField(wireName: 'qSelectedCount')
  int get selectedCount;

  /// Values that are selected.
  /// Original name: qSelected
  @nullable
  @BuiltValueField(wireName: 'qSelected')
  String get selected;

  /// Information about the range of selected values.
  /// Is empty if there is no range of selected values.
  /// Original name: qRangeInfo
  @nullable
  @BuiltValueField(wireName: 'qRangeInfo')
  BuiltList<RangeSelectInfo> get rangeInfo;

  /// Sort index of the field. Indexing starts from 0.
  /// Original name: qSortIndex
  @nullable
  @BuiltValueField(wireName: 'qSortIndex')
  int get sortIndex;

  /// Number of values in a particular state.
  /// Original name: qStateCounts
  @nullable
  @BuiltValueField(wireName: 'qStateCounts')
  NxStateCounts get stateCounts;

  /// Information about the fields that are selected.
  /// Original name: qSelectedFieldSelectionInfo
  @nullable
  @BuiltValueField(wireName: 'qSelectedFieldSelectionInfo')
  BuiltList<NxFieldSelectionInfo> get selectedFieldSelectionInfo;

  /// Information about the fields that are not selected.
  /// Original name: qNotSelectedFieldSelectionInfo
  @nullable
  @BuiltValueField(wireName: 'qNotSelectedFieldSelectionInfo')
  BuiltList<NxFieldSelectionInfo> get notSelectedFieldSelectionInfo;

  /// Maximum values to show in the current selections.
  /// The default value is 6.
  /// Original name: qSelectionThreshold
  @nullable
  @BuiltValueField(wireName: 'qSelectionThreshold')
  int get selectionThreshold;

  /// Label that, if defined, is displayed in current selections instead of the actual expression.
  /// Original name: qReadableName
  @nullable
  @BuiltValueField(wireName: 'qReadableName')
  String get readableName;

  /// Optional parameter. Indicates if the selection is to be hidden in the Selections bar.
  /// Is set to true if the current selection is hidden.
  /// Original name: qIsHidden
  @nullable
  @BuiltValueField(wireName: 'qIsHidden')
  bool get isHidden;

  factory NxCurrentSelectionItem([updates(NxCurrentSelectionItemBuilder b)]) =
      _$NxCurrentSelectionItem;

  factory NxCurrentSelectionItem.init(
      {int total,
      bool isNum,
      String field,
      bool locked,
      bool oneAndOnlyOne,
      String textSearch,
      int selectedCount,
      String selected,
      BuiltList<RangeSelectInfo> rangeInfo,
      int sortIndex,
      NxStateCounts stateCounts,
      BuiltList<NxFieldSelectionInfo> selectedFieldSelectionInfo,
      BuiltList<NxFieldSelectionInfo> notSelectedFieldSelectionInfo,
      int selectionThreshold,
      String readableName,
      bool isHidden}) = _$NxCurrentSelectionItem._;

  NxCurrentSelectionItem._();
}
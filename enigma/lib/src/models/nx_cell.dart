/// This file was autogenerated

library nx_cell;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
part 'nx_cell.g.dart';

abstract class NxCell implements Built<NxCell, NxCellBuilder> {
  static Serializer<NxCell> get serializer => _$nxCellSerializer;

  /// Some text.
  /// This parameter is optional.
  /// Original name: qText
  @nullable
  @BuiltValueField(wireName: 'qText')
  String get text;

  /// A value.
  /// This parameter is optional.
  /// Original name: qNum
  @nullable
  @BuiltValueField(wireName: 'qNum')
  num get qNum;

  /// Rank number of the value, starting from 0.
  /// If the element number is a negative number, it means that the returned value is not an element number.
  /// You can get the following negative values:
  /// * -1: the cell is a _Total_ cell. It shows a total.
  /// * -2: the cell is collapsed. Applies to pivot tables.
  /// * -3: the cell belongs to the group _Others_ .
  /// * -4: the cell is empty. Applies to pivot tables.
  /// Original name: qElemNumber
  @nullable
  @BuiltValueField(wireName: 'qElemNumber')
  int get elemNumber;

  /// State of the value.
  /// The default state for a measure is L.
  ///
  /// One of:
  /// * L or LOCKED
  /// * S or SELECTED
  /// * O or OPTION
  /// * D or DESELECTED
  /// * A or ALTERNATIVE
  /// * X or EXCLUDED
  /// * XS or EXCL_SELECTED
  /// * XL or EXCL_LOCKED
  /// * NSTATES
  /// Original name: qState
  @nullable
  @BuiltValueField(wireName: 'qState')
  String get state;

  /// Is set to _true_ , if **qText** and **qNum** are empty.
  /// This parameter is optional. The default value is _false_ .
  /// Original name: qIsEmpty
  @nullable
  @BuiltValueField(wireName: 'qIsEmpty')
  bool get isEmpty;

  /// Is set to _true_ if a total is displayed in the cell.
  /// This parameter is optional. The default value is _false_ .
  /// Not applicable to list objects.
  /// Original name: qIsTotalCell
  @nullable
  @BuiltValueField(wireName: 'qIsTotalCell')
  bool get isTotalCell;

  /// Is set to _true_ if the cell belongs to the group _Others_ .
  /// Dimension values can be set as _Others_ depending on what has been defined in **OtherTotalSpecProp** .
  /// This parameter is optional. The default value is _false_ .
  /// Not applicable to list objects.
  /// Original name: qIsOtherCell
  @nullable
  @BuiltValueField(wireName: 'qIsOtherCell')
  bool get isOtherCell;

  /// Frequency of the value.
  /// This parameter is optional.
  /// Original name: qFrequency
  @nullable
  @BuiltValueField(wireName: 'qFrequency')
  String get frequency;

  /// Search hits.
  /// The search hits are highlighted.
  /// This parameter is optional.
  /// Original name: qHighlightRanges
  @nullable
  @BuiltValueField(wireName: 'qHighlightRanges')
  JsonObject get highlightRanges;

  /// Attribute expression values.
  /// Original name: qAttrExps
  @nullable
  @BuiltValueField(wireName: 'qAttrExps')
  JsonObject get attrExps;

  /// Attribute dimensions values.
  /// Original name: qAttrDims
  @nullable
  @BuiltValueField(wireName: 'qAttrDims')
  JsonObject get attrDims;

  /// Is set to _true_ if the value is Null.
  /// Original name: qIsNull
  @nullable
  @BuiltValueField(wireName: 'qIsNull')
  bool get isNull;

  factory NxCell([updates(NxCellBuilder b)]) = _$NxCell;

  factory NxCell.init(
      {String text,
      num qNum,
      int elemNumber,
      String state,
      bool isEmpty,
      bool isTotalCell,
      bool isOtherCell,
      String frequency,
      JsonObject highlightRanges,
      JsonObject attrExps,
      JsonObject attrDims,
      bool isNull}) = _$NxCell._;

  NxCell._();
}

/// This file was autogenerated

library data_table_ex;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'data_table_ex.g.dart';

abstract class DataTableEx implements Built<DataTableEx, DataTableExBuilder> {
  static Serializer<DataTableEx> get serializer => _$dataTableExSerializer;

  /// Name of the table.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// List of the fields in the table.
  /// Original name: qFields
  @nullable
  @BuiltValueField(wireName: 'qFields')
  BuiltList<NxCell> get fields;

  /// List of format specification items, within brackets.
  /// Examples of specification items:
  /// * file type
  /// * embedded labels, no labels
  /// * table is &lt;table name&gt;
  /// Original name: qFormatSpec
  @nullable
  @BuiltValueField(wireName: 'qFormatSpec')
  String get formatSpec;

  factory DataTableEx([updates(DataTableExBuilder b)]) = _$DataTableEx;

  factory DataTableEx.init(
      {String name,
      BuiltList<NxCell> fields,
      String formatSpec}) = _$DataTableEx._;

  DataTableEx._();
}

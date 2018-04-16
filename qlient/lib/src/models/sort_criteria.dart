/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'value_expr.dart';

class SortCriteria {
  /// Sorts the field values according to their logical state (selected, optional, alternative or excluded).
  int sortByState;
  /// Sorts the field values by frequency (number of occurrences in the field).
  int sortByFrequency;
  /// Sorts the field values by numeric value.
  int sortByNumeric;
  /// Sorts the field by alphabetical order.
  int sortByAscii;
  /// Sorts the field values by the initial load order.
  int sortByLoadOrder;
  /// Sorts the field by expression.
  int sortByExpression;
  /// Sort by expression.
  ValueExpr expression;
  int sortByGreyness;
}


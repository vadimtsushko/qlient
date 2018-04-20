/// This code was autogenerated
//import 'package:built_value/built_value.dart';
import 'nx_cell.dart';

class NxDerivedField {
  /// Identifier of the derived field.
  /// The identifier is unique.
  /// Original name: qId
  String id;
  /// Combination of field name, definition and method.
  /// Example:
  /// _OrderDate.MyDefinition.Year_
  /// Original name: qName
  String name;
  /// Method name associated to the derived field.
  /// Original name: qMethod
  String method;
  /// Expression of the derived field.
  /// Example:
  /// If _qName_ is _OrderDate.MyDefinition.Year_ , the expression is as follows:
  /// _=${Mydefinition(OrderDate).Year}_
  /// Original name: qExpr
  String expr;
  /// List of tags.
  /// Original name: qTags
  List<NxCell> tags;
}


/// This code was autogenerated
//import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'nx_derived_field_description_list.dart';

/// ### NxDerivedFieldsdata
/// <table>
/// <tr>
/// <th>Name</th>
/// <th>Description</th>
/// <th>Type</th>
/// </tr>
/// <tr>
/// <td>qDerivedDefinitionName</td>
/// <td>Name of the derived definition.</td>
/// <td>String</td>
/// </tr>
/// <tr>
/// <td>qFieldDefs</td>
/// <td>List of the derived fields.</td>
/// <td>Array of <i>NxDerivedField</i></td>
/// </tr>
/// <tr>
/// <td>qGroupDefs</td>
/// <td>List of the derived groups.</td>
/// <td>Array of <i>NxDerivedGroup</i></td>
/// </tr>
/// <tr>
/// <td>qTags</td>
/// <td>List of tags on the derived fields.</td>
/// <td>Array of <i>String</i> </td>
/// </tr>
/// </table>
class NxFieldDescription {
  /// If set to true, it means that the field is a semantic.
  /// Original name: qIsSemantic
  bool isSemantic;
  /// If set to true, it means that the field is hidden.
  /// Original name: qIsHidden
  bool isHidden;
  /// If set to true, it means that the field is a system field.
  /// Original name: qIsSystem
  bool isSystem;
  /// If set to true a logical AND (instead of a logical OR) is used when making selections in a field.
  /// The default value is false.
  /// Original name: qAndMode
  bool andMode;
  /// Name of the field
  /// Original name: qName
  String name;
  /// Number of distinct field values
  /// Original name: qCardinal
  int cardinal;
  /// Gives information on a field. For example, it can return the type of the field.
  /// Examples: key, text, ASCII
  /// Original name: qTags
  List<NxCell> tags;
  /// If set to true, it means that the field is a field on the fly.
  /// Original name: qIsDefinitionOnly
  bool isDefinitionOnly;
  /// Lists the derived fields if any.
  /// Original name: qDerivedFieldData
  NxDerivedFieldDescriptionList derivedFieldData;
  /// Is used for Direct Discovery.
  /// If set to true, it means that the type of the field is detail.
  /// Original name: qIsDetail
  bool isDetail;
  /// Is used for Direct Discovery.
  /// If set to true, it means that the type of the field is measure.
  /// Original name: qIsImplicit
  bool isImplicit;
  /// Original name: qReadableName
  String readableName;
}


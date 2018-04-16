/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'size.dart';
import 'nx_validation_error.dart';
import 'nx_dimension_info.dart';
import 'nx_measure_info.dart';
import 'nx_cell.dart';
import 'nx_data_page.dart';
import 'nx_pivot_page.dart';
import 'nx_stack_page.dart';
import 'nx_cell_position.dart';

/// Renders the properties of a hypercube. Is the layout for _HyperCubeDef_.
/// For more information about the definition of a hypercube, see _Generic object_.
/// <div class=note>What is returned in HyperCube depends on the type of the hypercube (straight, pivot or stacked table, or tree) and on the method called (GetLayout, GetHyperCubeData, GetHyperCubePivotData, GetHyperCubeStackData, GetHyperCubeTreeData).</div>
class HyperCube {
  /// Name of the alternate state.
  /// Default is current selections _$_ .
  String stateName;
  /// Defines the size of the hypercube.
  Size size;
  /// This parameter is optional and is displayed in case of error.
  NxValidationError error;
  /// Information on the dimension.
  List<NxDimensionInfo> dimensionInfo;
  /// Information on the measure.
  List<NxMeasureInfo> measureInfo;
  /// Sort order of the columns in the hypercube.
  /// Column numbers are separated by a comma.
  /// Example: [1,0,2] means that the first column to be sorted was the column 1, followed by the column 0 and the column 2.
  List<int> effectiveInterColumnSortOrder;
  /// Aggregate for measures of all values in the field.
  /// The result value depends on the _qAggrFunc_ defined in _HyperCubeDef_.
  List<NxCell> grandTotalRow;
  /// Set of data.
  /// Is empty if nothing has been defined in **qInitialDataFetch** in _HyperCubeDef_.
  List<NxDataPage> dataPages;
  /// Set of data for pivot tables.
  /// Is empty if nothing has been defined in **qInitialDataFetch** in _HyperCubeDef_.
  List<NxPivotPage> pivotDataPages;
  /// Set of data for stacked tables.
  /// Is empty if nothing has been defined in **qInitialDataFetch** in _HyperCubeDef_.
  List<NxStackPage> stackedDataPages;
  /// Information about the mode of the visualization.
  /// 
  /// One of:
  /// * S or DATA_MODE_STRAIGHT
  /// * P or DATA_MODE_PIVOT
  /// * K or DATA_MODE_PIVOT_STACK
  /// * T or DATA_MODE_TREE
  String mode;
  /// Number of left dimensions.
  /// Default value is -1.
  /// The index related to each left dimension depends on the position of the pseudo dimension (if any).
  /// For example, a pivot table with:
  /// * Four dimensions in the following order: Country, City, Product and Category
  /// * One pseudo dimension in position 1
  /// * Three left dimensions.
  /// 
  /// implies that:
  /// * The index 0 corresponds to the left dimension Country.
  /// * The index 1 corresponds to the pseudo dimension.
  /// * The index 2 corresponds to the left dimension City.
  /// * Product and Category are top dimensions.
  /// 
  /// Another example:
  /// * Four dimensions in the following order: Country, City, Product and Category.
  /// * One pseudo dimension in position -1.
  /// * Three left dimensions.
  /// 
  /// implies that:
  /// * The index -1 corresponds to the pseudo dimension; the pseudo dimension is the most to the right.
  /// * The index 0 corresponds to the left dimension Country.
  /// * The index 1 corresponds to the left dimension City.
  /// * The index 2 corresponds to the left dimension Product.
  /// * Category is a top dimension.
  int noOfLeftDims;
  /// Is used for pivot tables only.
  /// If set to true, the formatting of the results is slightly different.
  /// This property is optional.
  bool indentMode;
  /// Is used for pivot tables only.
  /// Position of the last expended cell.
  /// This property is optional.
  NxCellPosition lastExpandedPos;
  /// True if other row exists.
  bool hasOtherValues;
  /// Title of the hypercube, for example the title of a chart.
  String title;
  /// The total number of nodes on each dimension (only applicable when _qMode = T_ ).
  List<int> treeNodesOnDim;
  /// The message displayed if calculation condition is not fulfilled.
  String calcCondMsg;
  /// The order of the columns.
  List<int> columnOrder;
}


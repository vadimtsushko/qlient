/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'delimiter_info.dart';

/// ### FileType
/// Recognized file formats are:
/// * _CSV_ for Delimited
/// * _FIX_ for Fixed Record
/// * _DIF_ for Data Interchange Format
/// * _EXCEL_BIFF_ for Microsoft Excel (XLS)
/// * _EXCEL_OOXML_ for Microsoft Excel (XLSX)
/// * _HTML_ for HTML
/// * _QVD_ for QVD file
/// * _XML_ for XML
/// * _QVX_ for QVX file
/// * _JSON_ for JSON format
/// * _KML_ for KML file
class FileDataFormat {
  /// Type of the file.
  /// 
  /// One of:
  /// * CSV or FILE_TYPE_CSV
  /// * FIX or FILE_TYPE_FIX
  /// * DIF or FILE_TYPE_DIF
  /// * EXCEL_BIFF or FILE_TYPE_EXCEL_BIFF
  /// * EXCEL_OOXML or FILE_TYPE_EXCEL_OOXML
  /// * HTML or FILE_TYPE_HTML
  /// * QVD or FILE_TYPE_QVD
  /// * XML or FILE_TYPE_XML
  /// * QVX or FILE_TYPE_QVX
  /// * JSON or FILE_TYPE_JSON
  /// * KML or FILE_TYPE_KML
  String type;
  /// One of:
  /// * Embedded labels (field names are present in the file)
  /// * No labels
  /// * Explicit labels (for DIFfiles)
  String label;
  /// One of:
  /// * None (no quotes)
  /// * MSQ (Modern Style Quoting)
  /// * Standard (quotes " " or ' ' can be used, but only if they are the first and last non blank characters of a field value)
  /// 
  /// This property is used for delimited files.
  String quote;
  /// String that marks the beginning of the comment line.
  /// Example: “#” or “//”
  /// The engine ignores the commented lines during the data load.
  /// This property is only used for delimited files.
  String comment;
  /// Information about the delimiter.
  /// This property is used for delimited files.
  DelimiterInfo delimiter;
  /// Character set used in the file.
  int codePage;
  /// Size of the header.
  /// Example: If the header size is 2, the first two rows in the file are considered as header and not as data. The header can contain the field names.
  int headerSize;
  /// Record length.
  /// Each record (row of data) contains a number of columns with a fixed field size.
  /// This property is used for fixed record data files.
  int recordSize;
  /// Number of spaces that one tab character represents in the table file.
  /// This property is used for fixed record data files.
  int tabSize;
  /// Is set to true, the end-of-file character is not taken into account during reload.
  /// This property is used for delimited files and fixed record data files.
  bool ignoreEOF;
  /// Positions of the field breaks in the table.
  /// This property is used for fixed record data files.
  String fixedWidthDelimiters;
}


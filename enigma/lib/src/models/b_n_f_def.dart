/// This file was autogenerated

library b_n_f_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
part 'b_n_f_def.g.dart';

abstract class BNFDef implements Built<BNFDef, BNFDefBuilder> {
  static Serializer<BNFDef> get serializer => _$bNFDefSerializer;

  /// Array of token references that all together build up the definition of the current token.
  /// Generally, if the array is not empty, the definition is a BNF rule (_qIsBnfRule_ is set to true). However, some BNF  rules do have an empty array (_qIsBnfRule_ is set to true, but _qBnf_ is empty).
  /// Original name: qBnf
  @nullable
  @BuiltValueField(wireName: 'qBnf')
  BuiltList<int> get bnf;

  /// Number of the current token definition.
  /// Original name: qNbr
  @nullable
  @BuiltValueField(wireName: 'qNbr')
  int get nbr;

  /// Number of the parent rule definition.
  /// Original name: qPNbr
  @nullable
  @BuiltValueField(wireName: 'qPNbr')
  int get pNbr;

  /// Reference identifier to a function described in the documentation. The identifier is stored in the definition of the token containing the function name.
  /// Is not used in Qlik Sense.
  /// Original name: qHelpId
  @nullable
  @BuiltValueField(wireName: 'qHelpId')
  int get helpId;

  /// Token name.
  /// One of:
  /// * A rule name
  /// * An identifier
  /// * A literal value
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// Literal string of the token.
  /// Examples: 'Round' and '('.
  /// Original name: qStr
  @nullable
  @BuiltValueField(wireName: 'qStr')
  String get str;

  /// If set to true, a list of related rule tokens is assigned to _qBnf_ .
  /// This parameter is optional. The default value is false.
  /// Original name: qIsBnfRule
  @nullable
  @BuiltValueField(wireName: 'qIsBnfRule')
  bool get isBnfRule;

  /// If set to true, the definition specifies a script statement.
  /// This parameter is optional. The default value is false.
  /// Original name: qScriptStatement
  @nullable
  @BuiltValueField(wireName: 'qScriptStatement')
  bool get scriptStatement;

  /// If set to true, the definition specifies a control statement.
  /// This parameter is optional. The default value is false.
  /// Original name: qControlStatement
  @nullable
  @BuiltValueField(wireName: 'qControlStatement')
  bool get controlStatement;

  /// If set to true, the definition specifies a literal token.
  /// This parameter is optional. The default value is false.
  /// Original name: qBnfLiteral
  @nullable
  @BuiltValueField(wireName: 'qBnfLiteral')
  bool get bnfLiteral;

  /// If set to true, the definition is related to a Qlik Sense function. It cannot be an aggregation function.
  /// This parameter is optional. The default value is false.
  /// Original name: qQvFunc
  @nullable
  @BuiltValueField(wireName: 'qQvFunc')
  bool get qvFunc;

  /// If set to true, the definition is related to an aggregation function.
  /// This parameter is optional. The default value is false.
  /// Original name: qAggrFunc
  @nullable
  @BuiltValueField(wireName: 'qAggrFunc')
  bool get aggrFunc;

  /// Group of the function.
  ///
  /// One of:
  /// * ALL or FUNC_GROUP_ALL
  /// * U or FUNC_GROUP_UNKNOWN
  /// * NONE or FUNC_GROUP_NONE
  /// * AGGR or FUNC_GROUP_AGGR
  /// * NUM or FUNC_GROUP_NUMERIC
  /// * RNG or FUNC_GROUP_RANGE
  /// * EXP or FUNC_GROUP_EXPONENTIAL_AND_LOGARITHMIC
  /// * TRIG or FUNC_GROUP_TRIGONOMETRIC_AND_HYPERBOLIC
  /// * FIN or FUNC_GROUP_FINANCIAL
  /// * MATH or FUNC_GROUP_MATH_CONSTANT_AND_PARAM_FREE
  /// * COUNT or FUNC_GROUP_COUNTER
  /// * STR or FUNC_GROUP_STRING
  /// * MAPP or FUNC_GROUP_MAPPING
  /// * RCRD or FUNC_GROUP_INTER_RECORD
  /// * CND or FUNC_GROUP_CONDITIONAL
  /// * LOG or FUNC_GROUP_LOGICAL
  /// * NULL or FUNC_GROUP_NULL
  /// * SYS or FUNC_GROUP_SYSTEM
  /// * FILE or FUNC_GROUP_FILE
  /// * TBL or FUNC_GROUP_TABLE
  /// * DATE or FUNC_GROUP_DATE_AND_TIME
  /// * NUMI or FUNC_GROUP_NUMBER_INTERPRET
  /// * FRMT or FUNC_GROUP_FORMATTING
  /// * CLR or FUNC_GROUP_COLOR
  /// * RNK or FUNC_GROUP_RANKING
  /// * GEO or FUNC_GROUP_GEO
  /// * EXT or FUNC_GROUP_EXTERNAL
  /// Original name: qFG
  @nullable
  @BuiltValueField(wireName: 'qFG')
  String get fG;

  /// If set to true, the definition is related to a field.
  /// This parameter is optional. The default value is false.
  /// Original name: qFieldFlag
  @nullable
  @BuiltValueField(wireName: 'qFieldFlag')
  bool get fieldFlag;

  /// Type of the data.
  ///
  /// One of:
  /// * N or NOT_META
  /// * D or META_DOC_NAME
  /// * R or META_RET_TYPE
  /// * V or META_DEFAULT_VALUE
  /// Original name: qMT
  @nullable
  @BuiltValueField(wireName: 'qMT')
  String get mT;

  /// Indicates whether a script statement, a chart or a script function is deprecated (not recommended for use).
  /// If set to true, the script statement or the function is not recommended for use in Qlik Sense.
  /// This parameter is optional. The default value is false.
  /// Original name: qDepr
  @nullable
  @BuiltValueField(wireName: 'qDepr')
  bool get depr;

  factory BNFDef([updates(BNFDefBuilder b)]) = _$BNFDef;

  factory BNFDef.init(
      {BuiltList<int> bnf,
      int nbr,
      int pNbr,
      int helpId,
      String name,
      String str,
      bool isBnfRule,
      bool scriptStatement,
      bool controlStatement,
      bool bnfLiteral,
      bool qvFunc,
      bool aggrFunc,
      String fG,
      bool fieldFlag,
      String mT,
      bool depr}) = _$BNFDef._;

  BNFDef._();
}

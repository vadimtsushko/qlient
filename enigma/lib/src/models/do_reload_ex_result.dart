/// This file was autogenerated

library do_reload_ex_result;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'do_reload_ex_result.g.dart';

abstract class DoReloadExResult
    implements Built<DoReloadExResult, DoReloadExResultBuilder> {
  static Serializer<DoReloadExResult> get serializer =>
      _$doReloadExResultSerializer;

  /// Original name: qSuccess
  @nullable
  @BuiltValueField(wireName: 'qSuccess')
  bool get success;

  /// Original name: qScriptLogFile
  @nullable
  @BuiltValueField(wireName: 'qScriptLogFile')
  String get scriptLogFile;

  factory DoReloadExResult([updates(DoReloadExResultBuilder b)]) =
      _$DoReloadExResult;

  factory DoReloadExResult.init({bool success, String scriptLogFile}) =
      _$DoReloadExResult._;

  DoReloadExResult._();
}

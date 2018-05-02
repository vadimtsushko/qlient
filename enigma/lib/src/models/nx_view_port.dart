/// This file was autogenerated

library nx_view_port;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_view_port.g.dart';

abstract class NxViewPort implements Built<NxViewPort, NxViewPortBuilder> {
  static Serializer<NxViewPort> get serializer => _$nxViewPortSerializer;

  /// Width of the canvas in pixels.
  /// Original name: qWidth
  @nullable
  @BuiltValueField(wireName: 'qWidth')
  int get width;

  /// Height of the canvas in pixels.
  /// Original name: qHeight
  @nullable
  @BuiltValueField(wireName: 'qHeight')
  int get height;

  /// Zoom level.
  /// Original name: qZoomLevel
  @nullable
  @BuiltValueField(wireName: 'qZoomLevel')
  int get zoomLevel;

  factory NxViewPort([updates(NxViewPortBuilder b)]) = _$NxViewPort;

  factory NxViewPort.init({int width, int height, int zoomLevel}) =
      _$NxViewPort._;

  NxViewPort._();
}
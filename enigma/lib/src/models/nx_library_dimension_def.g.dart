// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_library_dimension_def;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<NxLibraryDimensionDef> _$nxLibraryDimensionDefSerializer =
    new _$NxLibraryDimensionDefSerializer();

class _$NxLibraryDimensionDefSerializer
    implements StructuredSerializer<NxLibraryDimensionDef> {
  @override
  final Iterable<Type> types = const [
    NxLibraryDimensionDef,
    _$NxLibraryDimensionDef
  ];
  @override
  final String wireName = 'NxLibraryDimensionDef';

  @override
  Iterable serialize(Serializers serializers, NxLibraryDimensionDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.grouping != null) {
      result
        ..add('qGrouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.fieldDefs != null) {
      result
        ..add('qFieldDefs')
        ..add(serializers.serialize(object.fieldDefs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.fieldLabels != null) {
      result
        ..add('qFieldLabels')
        ..add(serializers.serialize(object.fieldLabels,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.labelExpression != null) {
      result
        ..add('qLabelExpression')
        ..add(serializers.serialize(object.labelExpression,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxLibraryDimensionDef deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxLibraryDimensionDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qGrouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFieldDefs':
          result.fieldDefs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qFieldLabels':
          result.fieldLabels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qLabelExpression':
          result.labelExpression = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxLibraryDimensionDef extends NxLibraryDimensionDef {
  @override
  final String grouping;
  @override
  final BuiltList<String> fieldDefs;
  @override
  final BuiltList<String> fieldLabels;
  @override
  final String labelExpression;

  factory _$NxLibraryDimensionDef(
          [void updates(NxLibraryDimensionDefBuilder b)]) =>
      (new NxLibraryDimensionDefBuilder()..update(updates)).build();

  _$NxLibraryDimensionDef._(
      {this.grouping, this.fieldDefs, this.fieldLabels, this.labelExpression})
      : super._();

  @override
  NxLibraryDimensionDef rebuild(void updates(NxLibraryDimensionDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLibraryDimensionDefBuilder toBuilder() =>
      new NxLibraryDimensionDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLibraryDimensionDef) return false;
    return grouping == other.grouping &&
        fieldDefs == other.fieldDefs &&
        fieldLabels == other.fieldLabels &&
        labelExpression == other.labelExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, grouping.hashCode), fieldDefs.hashCode),
            fieldLabels.hashCode),
        labelExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxLibraryDimensionDef')
          ..add('grouping', grouping)
          ..add('fieldDefs', fieldDefs)
          ..add('fieldLabels', fieldLabels)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxLibraryDimensionDefBuilder
    implements Builder<NxLibraryDimensionDef, NxLibraryDimensionDefBuilder> {
  _$NxLibraryDimensionDef _$v;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  ListBuilder<String> _fieldDefs;
  ListBuilder<String> get fieldDefs =>
      _$this._fieldDefs ??= new ListBuilder<String>();
  set fieldDefs(ListBuilder<String> fieldDefs) => _$this._fieldDefs = fieldDefs;

  ListBuilder<String> _fieldLabels;
  ListBuilder<String> get fieldLabels =>
      _$this._fieldLabels ??= new ListBuilder<String>();
  set fieldLabels(ListBuilder<String> fieldLabels) =>
      _$this._fieldLabels = fieldLabels;

  String _labelExpression;
  String get labelExpression => _$this._labelExpression;
  set labelExpression(String labelExpression) =>
      _$this._labelExpression = labelExpression;

  NxLibraryDimensionDefBuilder();

  NxLibraryDimensionDefBuilder get _$this {
    if (_$v != null) {
      _grouping = _$v.grouping;
      _fieldDefs = _$v.fieldDefs?.toBuilder();
      _fieldLabels = _$v.fieldLabels?.toBuilder();
      _labelExpression = _$v.labelExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxLibraryDimensionDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLibraryDimensionDef;
  }

  @override
  void update(void updates(NxLibraryDimensionDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLibraryDimensionDef build() {
    _$NxLibraryDimensionDef _$result;
    try {
      _$result = _$v ??
          new _$NxLibraryDimensionDef._(
              grouping: grouping,
              fieldDefs: _fieldDefs?.build(),
              fieldLabels: _fieldLabels?.build(),
              labelExpression: labelExpression);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fieldDefs';
        _fieldDefs?.build();
        _$failedField = 'fieldLabels';
        _fieldLabels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxLibraryDimensionDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

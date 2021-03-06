// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_attribute_expression_values;

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

Serializer<NxAttributeExpressionValues>
    _$nxAttributeExpressionValuesSerializer =
    new _$NxAttributeExpressionValuesSerializer();

class _$NxAttributeExpressionValuesSerializer
    implements StructuredSerializer<NxAttributeExpressionValues> {
  @override
  final Iterable<Type> types = const [
    NxAttributeExpressionValues,
    _$NxAttributeExpressionValues
  ];
  @override
  final String wireName = 'NxAttributeExpressionValues';

  @override
  Iterable serialize(
      Serializers serializers, NxAttributeExpressionValues object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.values != null) {
      result
        ..add('qValues')
        ..add(serializers.serialize(object.values,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxSimpleValue)])));
    }

    return result;
  }

  @override
  NxAttributeExpressionValues deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxAttributeExpressionValuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qValues':
          result.values.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxSimpleValue)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxAttributeExpressionValues extends NxAttributeExpressionValues {
  @override
  final BuiltList<NxSimpleValue> values;

  factory _$NxAttributeExpressionValues(
          [void updates(NxAttributeExpressionValuesBuilder b)]) =>
      (new NxAttributeExpressionValuesBuilder()..update(updates)).build();

  _$NxAttributeExpressionValues._({this.values}) : super._();

  @override
  NxAttributeExpressionValues rebuild(
          void updates(NxAttributeExpressionValuesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAttributeExpressionValuesBuilder toBuilder() =>
      new NxAttributeExpressionValuesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAttributeExpressionValues) return false;
    return values == other.values;
  }

  @override
  int get hashCode {
    return $jf($jc(0, values.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAttributeExpressionValues')
          ..add('values', values))
        .toString();
  }
}

class NxAttributeExpressionValuesBuilder
    implements
        Builder<NxAttributeExpressionValues,
            NxAttributeExpressionValuesBuilder> {
  _$NxAttributeExpressionValues _$v;

  ListBuilder<NxSimpleValue> _values;
  ListBuilder<NxSimpleValue> get values =>
      _$this._values ??= new ListBuilder<NxSimpleValue>();
  set values(ListBuilder<NxSimpleValue> values) => _$this._values = values;

  NxAttributeExpressionValuesBuilder();

  NxAttributeExpressionValuesBuilder get _$this {
    if (_$v != null) {
      _values = _$v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAttributeExpressionValues other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAttributeExpressionValues;
  }

  @override
  void update(void updates(NxAttributeExpressionValuesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAttributeExpressionValues build() {
    _$NxAttributeExpressionValues _$result;
    try {
      _$result =
          _$v ?? new _$NxAttributeExpressionValues._(values: _values?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxAttributeExpressionValues', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

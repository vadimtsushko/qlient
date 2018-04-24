// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_library_measure;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<NxLibraryMeasure> _$nxLibraryMeasureSerializer =
    new _$NxLibraryMeasureSerializer();

class _$NxLibraryMeasureSerializer
    implements StructuredSerializer<NxLibraryMeasure> {
  @override
  final Iterable<Type> types = const [NxLibraryMeasure, _$NxLibraryMeasure];
  @override
  final String wireName = 'NxLibraryMeasure';

  @override
  Iterable serialize(Serializers serializers, NxLibraryMeasure object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.def != null) {
      result
        ..add('def')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(String)));
    }
    if (object.grouping != null) {
      result
        ..add('grouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.expressions != null) {
      result
        ..add('expressions')
        ..add(serializers.serialize(object.expressions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.activeExpression != null) {
      result
        ..add('activeExpression')
        ..add(serializers.serialize(object.activeExpression,
            specifiedType: const FullType(int)));
    }
    if (object.labelExpression != null) {
      result
        ..add('labelExpression')
        ..add(serializers.serialize(object.labelExpression,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxLibraryMeasure deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxLibraryMeasureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'def':
          result.def = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expressions':
          result.expressions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'activeExpression':
          result.activeExpression = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'labelExpression':
          result.labelExpression = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxLibraryMeasure extends NxLibraryMeasure {
  @override
  final String label;
  @override
  final String def;
  @override
  final String grouping;
  @override
  final BuiltList<NxCell> expressions;
  @override
  final int activeExpression;
  @override
  final String labelExpression;

  factory _$NxLibraryMeasure([void updates(NxLibraryMeasureBuilder b)]) =>
      (new NxLibraryMeasureBuilder()..update(updates)).build();

  _$NxLibraryMeasure._(
      {this.label,
      this.def,
      this.grouping,
      this.expressions,
      this.activeExpression,
      this.labelExpression})
      : super._();

  @override
  NxLibraryMeasure rebuild(void updates(NxLibraryMeasureBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLibraryMeasureBuilder toBuilder() =>
      new NxLibraryMeasureBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLibraryMeasure) return false;
    return label == other.label &&
        def == other.def &&
        grouping == other.grouping &&
        expressions == other.expressions &&
        activeExpression == other.activeExpression &&
        labelExpression == other.labelExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, label.hashCode), def.hashCode),
                    grouping.hashCode),
                expressions.hashCode),
            activeExpression.hashCode),
        labelExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxLibraryMeasure')
          ..add('label', label)
          ..add('def', def)
          ..add('grouping', grouping)
          ..add('expressions', expressions)
          ..add('activeExpression', activeExpression)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxLibraryMeasureBuilder
    implements Builder<NxLibraryMeasure, NxLibraryMeasureBuilder> {
  _$NxLibraryMeasure _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _def;
  String get def => _$this._def;
  set def(String def) => _$this._def = def;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  ListBuilder<NxCell> _expressions;
  ListBuilder<NxCell> get expressions =>
      _$this._expressions ??= new ListBuilder<NxCell>();
  set expressions(ListBuilder<NxCell> expressions) =>
      _$this._expressions = expressions;

  int _activeExpression;
  int get activeExpression => _$this._activeExpression;
  set activeExpression(int activeExpression) =>
      _$this._activeExpression = activeExpression;

  String _labelExpression;
  String get labelExpression => _$this._labelExpression;
  set labelExpression(String labelExpression) =>
      _$this._labelExpression = labelExpression;

  NxLibraryMeasureBuilder();

  NxLibraryMeasureBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _def = _$v.def;
      _grouping = _$v.grouping;
      _expressions = _$v.expressions?.toBuilder();
      _activeExpression = _$v.activeExpression;
      _labelExpression = _$v.labelExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxLibraryMeasure other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLibraryMeasure;
  }

  @override
  void update(void updates(NxLibraryMeasureBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLibraryMeasure build() {
    _$NxLibraryMeasure _$result;
    try {
      _$result = _$v ??
          new _$NxLibraryMeasure._(
              label: label,
              def: def,
              grouping: grouping,
              expressions: _expressions?.build(),
              activeExpression: activeExpression,
              labelExpression: labelExpression);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'expressions';
        _expressions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxLibraryMeasure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
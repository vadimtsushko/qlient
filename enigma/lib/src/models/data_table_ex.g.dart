// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_table_ex;

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

Serializer<DataTableEx> _$dataTableExSerializer = new _$DataTableExSerializer();

class _$DataTableExSerializer implements StructuredSerializer<DataTableEx> {
  @override
  final Iterable<Type> types = const [DataTableEx, _$DataTableEx];
  @override
  final String wireName = 'DataTableEx';

  @override
  Iterable serialize(Serializers serializers, DataTableEx object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.fields != null) {
      result
        ..add('qFields')
        ..add(serializers.serialize(object.fields,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DataField)])));
    }
    if (object.formatSpec != null) {
      result
        ..add('qFormatSpec')
        ..add(serializers.serialize(object.formatSpec,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  DataTableEx deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataTableExBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFields':
          result.fields.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(DataField)])) as BuiltList);
          break;
        case 'qFormatSpec':
          result.formatSpec = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataTableEx extends DataTableEx {
  @override
  final String name;
  @override
  final BuiltList<DataField> fields;
  @override
  final String formatSpec;

  factory _$DataTableEx([void updates(DataTableExBuilder b)]) =>
      (new DataTableExBuilder()..update(updates)).build();

  _$DataTableEx._({this.name, this.fields, this.formatSpec}) : super._();

  @override
  DataTableEx rebuild(void updates(DataTableExBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DataTableExBuilder toBuilder() => new DataTableExBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DataTableEx) return false;
    return name == other.name &&
        fields == other.fields &&
        formatSpec == other.formatSpec;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), fields.hashCode), formatSpec.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataTableEx')
          ..add('name', name)
          ..add('fields', fields)
          ..add('formatSpec', formatSpec))
        .toString();
  }
}

class DataTableExBuilder implements Builder<DataTableEx, DataTableExBuilder> {
  _$DataTableEx _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<DataField> _fields;
  ListBuilder<DataField> get fields =>
      _$this._fields ??= new ListBuilder<DataField>();
  set fields(ListBuilder<DataField> fields) => _$this._fields = fields;

  String _formatSpec;
  String get formatSpec => _$this._formatSpec;
  set formatSpec(String formatSpec) => _$this._formatSpec = formatSpec;

  DataTableExBuilder();

  DataTableExBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _fields = _$v.fields?.toBuilder();
      _formatSpec = _$v.formatSpec;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataTableEx other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DataTableEx;
  }

  @override
  void update(void updates(DataTableExBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DataTableEx build() {
    _$DataTableEx _$result;
    try {
      _$result = _$v ??
          new _$DataTableEx._(
              name: name, fields: _fields?.build(), formatSpec: formatSpec);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataTableEx', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

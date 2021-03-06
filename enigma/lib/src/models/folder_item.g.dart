// GENERATED CODE - DO NOT MODIFY BY HAND

part of folder_item;

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

Serializer<FolderItem> _$folderItemSerializer = new _$FolderItemSerializer();

class _$FolderItemSerializer implements StructuredSerializer<FolderItem> {
  @override
  final Iterable<Type> types = const [FolderItem, _$FolderItem];
  @override
  final String wireName = 'FolderItem';

  @override
  Iterable serialize(Serializers serializers, FolderItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FolderItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FolderItemBuilder();

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
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FolderItem extends FolderItem {
  @override
  final String name;
  @override
  final String type;

  factory _$FolderItem([void updates(FolderItemBuilder b)]) =>
      (new FolderItemBuilder()..update(updates)).build();

  _$FolderItem._({this.name, this.type}) : super._();

  @override
  FolderItem rebuild(void updates(FolderItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FolderItemBuilder toBuilder() => new FolderItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FolderItem) return false;
    return name == other.name && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FolderItem')
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class FolderItemBuilder implements Builder<FolderItem, FolderItemBuilder> {
  _$FolderItem _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  FolderItemBuilder();

  FolderItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FolderItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FolderItem;
  }

  @override
  void update(void updates(FolderItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FolderItem build() {
    final _$result = _$v ?? new _$FolderItem._(name: name, type: type);
    replace(_$result);
    return _$result;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_description;

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

Serializer<FieldDescription> _$fieldDescriptionSerializer =
    new _$FieldDescriptionSerializer();

class _$FieldDescriptionSerializer
    implements StructuredSerializer<FieldDescription> {
  @override
  final Iterable<Type> types = const [FieldDescription, _$FieldDescription];
  @override
  final String wireName = 'FieldDescription';

  @override
  Iterable serialize(Serializers serializers, FieldDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.internalNumber != null) {
      result
        ..add('qInternalNumber')
        ..add(serializers.serialize(object.internalNumber,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.srcTables != null) {
      result
        ..add('qSrcTables')
        ..add(serializers.serialize(object.srcTables,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.isSystem != null) {
      result
        ..add('qIsSystem')
        ..add(serializers.serialize(object.isSystem,
            specifiedType: const FullType(bool)));
    }
    if (object.isHidden != null) {
      result
        ..add('qIsHidden')
        ..add(serializers.serialize(object.isHidden,
            specifiedType: const FullType(bool)));
    }
    if (object.isSemantic != null) {
      result
        ..add('qIsSemantic')
        ..add(serializers.serialize(object.isSemantic,
            specifiedType: const FullType(bool)));
    }
    if (object.distinctOnly != null) {
      result
        ..add('qDistinctOnly')
        ..add(serializers.serialize(object.distinctOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.cardinal != null) {
      result
        ..add('qCardinal')
        ..add(serializers.serialize(object.cardinal,
            specifiedType: const FullType(int)));
    }
    if (object.totalCount != null) {
      result
        ..add('qTotalCount')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.possibleCountOBSOLETE != null) {
      result
        ..add('qPossibleCount_OBSOLETE')
        ..add(serializers.serialize(object.possibleCountOBSOLETE,
            specifiedType: const FullType(int)));
    }
    if (object.hasInfoOBSOLETE != null) {
      result
        ..add('qHasInfo_OBSOLETE')
        ..add(serializers.serialize(object.hasInfoOBSOLETE,
            specifiedType: const FullType(bool)));
    }
    if (object.isLocked != null) {
      result
        ..add('qIsLocked')
        ..add(serializers.serialize(object.isLocked,
            specifiedType: const FullType(bool)));
    }
    if (object.alwaysOneSelected != null) {
      result
        ..add('qAlwaysOneSelected')
        ..add(serializers.serialize(object.alwaysOneSelected,
            specifiedType: const FullType(bool)));
    }
    if (object.andMode != null) {
      result
        ..add('qAndMode')
        ..add(serializers.serialize(object.andMode,
            specifiedType: const FullType(bool)));
    }
    if (object.isNumeric != null) {
      result
        ..add('qIsNumeric')
        ..add(serializers.serialize(object.isNumeric,
            specifiedType: const FullType(bool)));
    }
    if (object.comment != null) {
      result
        ..add('qComment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('qTags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.isDefinitionOnly != null) {
      result
        ..add('qIsDefinitionOnly')
        ..add(serializers.serialize(object.isDefinitionOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.byteSize != null) {
      result
        ..add('qByteSize')
        ..add(serializers.serialize(object.byteSize,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  FieldDescription deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FieldDescriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInternalNumber':
          result.internalNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSrcTables':
          result.srcTables.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qIsSystem':
          result.isSystem = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsHidden':
          result.isHidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsSemantic':
          result.isSemantic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qDistinctOnly':
          result.distinctOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qCardinal':
          result.cardinal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTotalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qPossibleCount_OBSOLETE':
          result.possibleCountOBSOLETE = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qHasInfo_OBSOLETE':
          result.hasInfoOBSOLETE = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAlwaysOneSelected':
          result.alwaysOneSelected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAndMode':
          result.andMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsNumeric':
          result.isNumeric = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qComment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qIsDefinitionOnly':
          result.isDefinitionOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qByteSize':
          result.byteSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldDescription extends FieldDescription {
  @override
  final int internalNumber;
  @override
  final String name;
  @override
  final BuiltList<String> srcTables;
  @override
  final bool isSystem;
  @override
  final bool isHidden;
  @override
  final bool isSemantic;
  @override
  final bool distinctOnly;
  @override
  final int cardinal;
  @override
  final int totalCount;
  @override
  final int possibleCountOBSOLETE;
  @override
  final bool hasInfoOBSOLETE;
  @override
  final bool isLocked;
  @override
  final bool alwaysOneSelected;
  @override
  final bool andMode;
  @override
  final bool isNumeric;
  @override
  final String comment;
  @override
  final BuiltList<String> tags;
  @override
  final bool isDefinitionOnly;
  @override
  final int byteSize;

  factory _$FieldDescription([void updates(FieldDescriptionBuilder b)]) =>
      (new FieldDescriptionBuilder()..update(updates)).build();

  _$FieldDescription._(
      {this.internalNumber,
      this.name,
      this.srcTables,
      this.isSystem,
      this.isHidden,
      this.isSemantic,
      this.distinctOnly,
      this.cardinal,
      this.totalCount,
      this.possibleCountOBSOLETE,
      this.hasInfoOBSOLETE,
      this.isLocked,
      this.alwaysOneSelected,
      this.andMode,
      this.isNumeric,
      this.comment,
      this.tags,
      this.isDefinitionOnly,
      this.byteSize})
      : super._();

  @override
  FieldDescription rebuild(void updates(FieldDescriptionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldDescriptionBuilder toBuilder() =>
      new FieldDescriptionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldDescription) return false;
    return internalNumber == other.internalNumber &&
        name == other.name &&
        srcTables == other.srcTables &&
        isSystem == other.isSystem &&
        isHidden == other.isHidden &&
        isSemantic == other.isSemantic &&
        distinctOnly == other.distinctOnly &&
        cardinal == other.cardinal &&
        totalCount == other.totalCount &&
        possibleCountOBSOLETE == other.possibleCountOBSOLETE &&
        hasInfoOBSOLETE == other.hasInfoOBSOLETE &&
        isLocked == other.isLocked &&
        alwaysOneSelected == other.alwaysOneSelected &&
        andMode == other.andMode &&
        isNumeric == other.isNumeric &&
        comment == other.comment &&
        tags == other.tags &&
        isDefinitionOnly == other.isDefinitionOnly &&
        byteSize == other.byteSize;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                internalNumber
                                                                                    .hashCode),
                                                                            name
                                                                                .hashCode),
                                                                        srcTables
                                                                            .hashCode),
                                                                    isSystem
                                                                        .hashCode),
                                                                isHidden
                                                                    .hashCode),
                                                            isSemantic
                                                                .hashCode),
                                                        distinctOnly.hashCode),
                                                    cardinal.hashCode),
                                                totalCount.hashCode),
                                            possibleCountOBSOLETE.hashCode),
                                        hasInfoOBSOLETE.hashCode),
                                    isLocked.hashCode),
                                alwaysOneSelected.hashCode),
                            andMode.hashCode),
                        isNumeric.hashCode),
                    comment.hashCode),
                tags.hashCode),
            isDefinitionOnly.hashCode),
        byteSize.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldDescription')
          ..add('internalNumber', internalNumber)
          ..add('name', name)
          ..add('srcTables', srcTables)
          ..add('isSystem', isSystem)
          ..add('isHidden', isHidden)
          ..add('isSemantic', isSemantic)
          ..add('distinctOnly', distinctOnly)
          ..add('cardinal', cardinal)
          ..add('totalCount', totalCount)
          ..add('possibleCountOBSOLETE', possibleCountOBSOLETE)
          ..add('hasInfoOBSOLETE', hasInfoOBSOLETE)
          ..add('isLocked', isLocked)
          ..add('alwaysOneSelected', alwaysOneSelected)
          ..add('andMode', andMode)
          ..add('isNumeric', isNumeric)
          ..add('comment', comment)
          ..add('tags', tags)
          ..add('isDefinitionOnly', isDefinitionOnly)
          ..add('byteSize', byteSize))
        .toString();
  }
}

class FieldDescriptionBuilder
    implements Builder<FieldDescription, FieldDescriptionBuilder> {
  _$FieldDescription _$v;

  int _internalNumber;
  int get internalNumber => _$this._internalNumber;
  set internalNumber(int internalNumber) =>
      _$this._internalNumber = internalNumber;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _srcTables;
  ListBuilder<String> get srcTables =>
      _$this._srcTables ??= new ListBuilder<String>();
  set srcTables(ListBuilder<String> srcTables) => _$this._srcTables = srcTables;

  bool _isSystem;
  bool get isSystem => _$this._isSystem;
  set isSystem(bool isSystem) => _$this._isSystem = isSystem;

  bool _isHidden;
  bool get isHidden => _$this._isHidden;
  set isHidden(bool isHidden) => _$this._isHidden = isHidden;

  bool _isSemantic;
  bool get isSemantic => _$this._isSemantic;
  set isSemantic(bool isSemantic) => _$this._isSemantic = isSemantic;

  bool _distinctOnly;
  bool get distinctOnly => _$this._distinctOnly;
  set distinctOnly(bool distinctOnly) => _$this._distinctOnly = distinctOnly;

  int _cardinal;
  int get cardinal => _$this._cardinal;
  set cardinal(int cardinal) => _$this._cardinal = cardinal;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  int _possibleCountOBSOLETE;
  int get possibleCountOBSOLETE => _$this._possibleCountOBSOLETE;
  set possibleCountOBSOLETE(int possibleCountOBSOLETE) =>
      _$this._possibleCountOBSOLETE = possibleCountOBSOLETE;

  bool _hasInfoOBSOLETE;
  bool get hasInfoOBSOLETE => _$this._hasInfoOBSOLETE;
  set hasInfoOBSOLETE(bool hasInfoOBSOLETE) =>
      _$this._hasInfoOBSOLETE = hasInfoOBSOLETE;

  bool _isLocked;
  bool get isLocked => _$this._isLocked;
  set isLocked(bool isLocked) => _$this._isLocked = isLocked;

  bool _alwaysOneSelected;
  bool get alwaysOneSelected => _$this._alwaysOneSelected;
  set alwaysOneSelected(bool alwaysOneSelected) =>
      _$this._alwaysOneSelected = alwaysOneSelected;

  bool _andMode;
  bool get andMode => _$this._andMode;
  set andMode(bool andMode) => _$this._andMode = andMode;

  bool _isNumeric;
  bool get isNumeric => _$this._isNumeric;
  set isNumeric(bool isNumeric) => _$this._isNumeric = isNumeric;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  bool _isDefinitionOnly;
  bool get isDefinitionOnly => _$this._isDefinitionOnly;
  set isDefinitionOnly(bool isDefinitionOnly) =>
      _$this._isDefinitionOnly = isDefinitionOnly;

  int _byteSize;
  int get byteSize => _$this._byteSize;
  set byteSize(int byteSize) => _$this._byteSize = byteSize;

  FieldDescriptionBuilder();

  FieldDescriptionBuilder get _$this {
    if (_$v != null) {
      _internalNumber = _$v.internalNumber;
      _name = _$v.name;
      _srcTables = _$v.srcTables?.toBuilder();
      _isSystem = _$v.isSystem;
      _isHidden = _$v.isHidden;
      _isSemantic = _$v.isSemantic;
      _distinctOnly = _$v.distinctOnly;
      _cardinal = _$v.cardinal;
      _totalCount = _$v.totalCount;
      _possibleCountOBSOLETE = _$v.possibleCountOBSOLETE;
      _hasInfoOBSOLETE = _$v.hasInfoOBSOLETE;
      _isLocked = _$v.isLocked;
      _alwaysOneSelected = _$v.alwaysOneSelected;
      _andMode = _$v.andMode;
      _isNumeric = _$v.isNumeric;
      _comment = _$v.comment;
      _tags = _$v.tags?.toBuilder();
      _isDefinitionOnly = _$v.isDefinitionOnly;
      _byteSize = _$v.byteSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldDescription other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldDescription;
  }

  @override
  void update(void updates(FieldDescriptionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldDescription build() {
    _$FieldDescription _$result;
    try {
      _$result = _$v ??
          new _$FieldDescription._(
              internalNumber: internalNumber,
              name: name,
              srcTables: _srcTables?.build(),
              isSystem: isSystem,
              isHidden: isHidden,
              isSemantic: isSemantic,
              distinctOnly: distinctOnly,
              cardinal: cardinal,
              totalCount: totalCount,
              possibleCountOBSOLETE: possibleCountOBSOLETE,
              hasInfoOBSOLETE: hasInfoOBSOLETE,
              isLocked: isLocked,
              alwaysOneSelected: alwaysOneSelected,
              andMode: andMode,
              isNumeric: isNumeric,
              comment: comment,
              tags: _tags?.build(),
              isDefinitionOnly: isDefinitionOnly,
              byteSize: byteSize);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'srcTables';
        _srcTables?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FieldDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

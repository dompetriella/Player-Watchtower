// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @HiveField(0)
  String get guid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get blurb => throw _privateConstructorUsedError;
  @HiveField(3)
  String get itemCategory => throw _privateConstructorUsedError;
  @HiveField(4)
  String get description => throw _privateConstructorUsedError;
  @HiveField(5)
  int get amount => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get isQuickSelect => throw _privateConstructorUsedError;
  @HiveField(7)
  int get inventoryType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) String itemCategory,
      @HiveField(4) String description,
      @HiveField(5) int amount,
      @HiveField(6) bool isQuickSelect,
      @HiveField(7) int inventoryType});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? name = null,
    Object? blurb = null,
    Object? itemCategory = null,
    Object? description = null,
    Object? amount = null,
    Object? isQuickSelect = null,
    Object? inventoryType = null,
  }) {
    return _then(_value.copyWith(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      blurb: null == blurb
          ? _value.blurb
          : blurb // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isQuickSelect: null == isQuickSelect
          ? _value.isQuickSelect
          : isQuickSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      inventoryType: null == inventoryType
          ? _value.inventoryType
          : inventoryType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) String itemCategory,
      @HiveField(4) String description,
      @HiveField(5) int amount,
      @HiveField(6) bool isQuickSelect,
      @HiveField(7) int inventoryType});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? name = null,
    Object? blurb = null,
    Object? itemCategory = null,
    Object? description = null,
    Object? amount = null,
    Object? isQuickSelect = null,
    Object? inventoryType = null,
  }) {
    return _then(_$_Item(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      blurb: null == blurb
          ? _value.blurb
          : blurb // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isQuickSelect: null == isQuickSelect
          ? _value.isQuickSelect
          : isQuickSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      inventoryType: null == inventoryType
          ? _value.inventoryType
          : inventoryType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 9)
class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(
      {@HiveField(0) this.guid = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.blurb = '',
      @HiveField(3) this.itemCategory = '',
      @HiveField(4) this.description = '',
      @HiveField(5) this.amount = 1,
      @HiveField(6) this.isQuickSelect = false,
      @HiveField(7) this.inventoryType = 0});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String guid;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String blurb;
  @override
  @JsonKey()
  @HiveField(3)
  final String itemCategory;
  @override
  @JsonKey()
  @HiveField(4)
  final String description;
  @override
  @JsonKey()
  @HiveField(5)
  final int amount;
  @override
  @JsonKey()
  @HiveField(6)
  final bool isQuickSelect;
  @override
  @JsonKey()
  @HiveField(7)
  final int inventoryType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(guid: $guid, name: $name, blurb: $blurb, itemCategory: $itemCategory, description: $description, amount: $amount, isQuickSelect: $isQuickSelect, inventoryType: $inventoryType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('blurb', blurb))
      ..add(DiagnosticsProperty('itemCategory', itemCategory))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('isQuickSelect', isQuickSelect))
      ..add(DiagnosticsProperty('inventoryType', inventoryType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.blurb, blurb) || other.blurb == blurb) &&
            (identical(other.itemCategory, itemCategory) ||
                other.itemCategory == itemCategory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isQuickSelect, isQuickSelect) ||
                other.isQuickSelect == isQuickSelect) &&
            (identical(other.inventoryType, inventoryType) ||
                other.inventoryType == inventoryType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, guid, name, blurb, itemCategory,
      description, amount, isQuickSelect, inventoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {@HiveField(0) final String guid,
      @HiveField(1) final String name,
      @HiveField(2) final String blurb,
      @HiveField(3) final String itemCategory,
      @HiveField(4) final String description,
      @HiveField(5) final int amount,
      @HiveField(6) final bool isQuickSelect,
      @HiveField(7) final int inventoryType}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  @HiveField(0)
  String get guid;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get blurb;
  @override
  @HiveField(3)
  String get itemCategory;
  @override
  @HiveField(4)
  String get description;
  @override
  @HiveField(5)
  int get amount;
  @override
  @HiveField(6)
  bool get isQuickSelect;
  @override
  @HiveField(7)
  int get inventoryType;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

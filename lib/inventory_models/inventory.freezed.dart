// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inventory _$InventoryFromJson(Map<String, dynamic> json) {
  return _Inventory.fromJson(json);
}

/// @nodoc
mixin _$Inventory {
  @HiveField(0)
  String get guid => throw _privateConstructorUsedError;
  @HiveField(1)
  List<Weapon> get weapons => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Spell> get spells => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Item> get items => throw _privateConstructorUsedError;
  @HiveField(4)
  List<Weapon> get quickSelectWeapons => throw _privateConstructorUsedError;
  @HiveField(5)
  List<Spell> get quickSelectSpells => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Item> get quickSelectItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res, Inventory>;
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) List<Weapon> weapons,
      @HiveField(2) List<Spell> spells,
      @HiveField(3) List<Item> items,
      @HiveField(4) List<Weapon> quickSelectWeapons,
      @HiveField(5) List<Spell> quickSelectSpells,
      @HiveField(6) List<Item> quickSelectItems});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res, $Val extends Inventory>
    implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? weapons = null,
    Object? spells = null,
    Object? items = null,
    Object? quickSelectWeapons = null,
    Object? quickSelectSpells = null,
    Object? quickSelectItems = null,
  }) {
    return _then(_value.copyWith(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      weapons: null == weapons
          ? _value.weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<Weapon>,
      spells: null == spells
          ? _value.spells
          : spells // ignore: cast_nullable_to_non_nullable
              as List<Spell>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      quickSelectWeapons: null == quickSelectWeapons
          ? _value.quickSelectWeapons
          : quickSelectWeapons // ignore: cast_nullable_to_non_nullable
              as List<Weapon>,
      quickSelectSpells: null == quickSelectSpells
          ? _value.quickSelectSpells
          : quickSelectSpells // ignore: cast_nullable_to_non_nullable
              as List<Spell>,
      quickSelectItems: null == quickSelectItems
          ? _value.quickSelectItems
          : quickSelectItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryCopyWith<$Res> implements $InventoryCopyWith<$Res> {
  factory _$$_InventoryCopyWith(
          _$_Inventory value, $Res Function(_$_Inventory) then) =
      __$$_InventoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) List<Weapon> weapons,
      @HiveField(2) List<Spell> spells,
      @HiveField(3) List<Item> items,
      @HiveField(4) List<Weapon> quickSelectWeapons,
      @HiveField(5) List<Spell> quickSelectSpells,
      @HiveField(6) List<Item> quickSelectItems});
}

/// @nodoc
class __$$_InventoryCopyWithImpl<$Res>
    extends _$InventoryCopyWithImpl<$Res, _$_Inventory>
    implements _$$_InventoryCopyWith<$Res> {
  __$$_InventoryCopyWithImpl(
      _$_Inventory _value, $Res Function(_$_Inventory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? weapons = null,
    Object? spells = null,
    Object? items = null,
    Object? quickSelectWeapons = null,
    Object? quickSelectSpells = null,
    Object? quickSelectItems = null,
  }) {
    return _then(_$_Inventory(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      weapons: null == weapons
          ? _value._weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<Weapon>,
      spells: null == spells
          ? _value._spells
          : spells // ignore: cast_nullable_to_non_nullable
              as List<Spell>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      quickSelectWeapons: null == quickSelectWeapons
          ? _value._quickSelectWeapons
          : quickSelectWeapons // ignore: cast_nullable_to_non_nullable
              as List<Weapon>,
      quickSelectSpells: null == quickSelectSpells
          ? _value._quickSelectSpells
          : quickSelectSpells // ignore: cast_nullable_to_non_nullable
              as List<Spell>,
      quickSelectItems: null == quickSelectItems
          ? _value._quickSelectItems
          : quickSelectItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6)
class _$_Inventory with DiagnosticableTreeMixin implements _Inventory {
  const _$_Inventory(
      {@HiveField(0) this.guid = '',
      @HiveField(1) final List<Weapon> weapons = const [],
      @HiveField(2) final List<Spell> spells = const [],
      @HiveField(3) final List<Item> items = const [],
      @HiveField(4) final List<Weapon> quickSelectWeapons = const [],
      @HiveField(5) final List<Spell> quickSelectSpells = const [],
      @HiveField(6) final List<Item> quickSelectItems = const []})
      : _weapons = weapons,
        _spells = spells,
        _items = items,
        _quickSelectWeapons = quickSelectWeapons,
        _quickSelectSpells = quickSelectSpells,
        _quickSelectItems = quickSelectItems;

  factory _$_Inventory.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String guid;
  final List<Weapon> _weapons;
  @override
  @JsonKey()
  @HiveField(1)
  List<Weapon> get weapons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weapons);
  }

  final List<Spell> _spells;
  @override
  @JsonKey()
  @HiveField(2)
  List<Spell> get spells {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spells);
  }

  final List<Item> _items;
  @override
  @JsonKey()
  @HiveField(3)
  List<Item> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<Weapon> _quickSelectWeapons;
  @override
  @JsonKey()
  @HiveField(4)
  List<Weapon> get quickSelectWeapons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickSelectWeapons);
  }

  final List<Spell> _quickSelectSpells;
  @override
  @JsonKey()
  @HiveField(5)
  List<Spell> get quickSelectSpells {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickSelectSpells);
  }

  final List<Item> _quickSelectItems;
  @override
  @JsonKey()
  @HiveField(6)
  List<Item> get quickSelectItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickSelectItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Inventory(guid: $guid, weapons: $weapons, spells: $spells, items: $items, quickSelectWeapons: $quickSelectWeapons, quickSelectSpells: $quickSelectSpells, quickSelectItems: $quickSelectItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Inventory'))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('weapons', weapons))
      ..add(DiagnosticsProperty('spells', spells))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('quickSelectWeapons', quickSelectWeapons))
      ..add(DiagnosticsProperty('quickSelectSpells', quickSelectSpells))
      ..add(DiagnosticsProperty('quickSelectItems', quickSelectItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inventory &&
            (identical(other.guid, guid) || other.guid == guid) &&
            const DeepCollectionEquality().equals(other._weapons, _weapons) &&
            const DeepCollectionEquality().equals(other._spells, _spells) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._quickSelectWeapons, _quickSelectWeapons) &&
            const DeepCollectionEquality()
                .equals(other._quickSelectSpells, _quickSelectSpells) &&
            const DeepCollectionEquality()
                .equals(other._quickSelectItems, _quickSelectItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      guid,
      const DeepCollectionEquality().hash(_weapons),
      const DeepCollectionEquality().hash(_spells),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_quickSelectWeapons),
      const DeepCollectionEquality().hash(_quickSelectSpells),
      const DeepCollectionEquality().hash(_quickSelectItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      __$$_InventoryCopyWithImpl<_$_Inventory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryToJson(
      this,
    );
  }
}

abstract class _Inventory implements Inventory {
  const factory _Inventory(
      {@HiveField(0) final String guid,
      @HiveField(1) final List<Weapon> weapons,
      @HiveField(2) final List<Spell> spells,
      @HiveField(3) final List<Item> items,
      @HiveField(4) final List<Weapon> quickSelectWeapons,
      @HiveField(5) final List<Spell> quickSelectSpells,
      @HiveField(6) final List<Item> quickSelectItems}) = _$_Inventory;

  factory _Inventory.fromJson(Map<String, dynamic> json) =
      _$_Inventory.fromJson;

  @override
  @HiveField(0)
  String get guid;
  @override
  @HiveField(1)
  List<Weapon> get weapons;
  @override
  @HiveField(2)
  List<Spell> get spells;
  @override
  @HiveField(3)
  List<Item> get items;
  @override
  @HiveField(4)
  List<Weapon> get quickSelectWeapons;
  @override
  @HiveField(5)
  List<Spell> get quickSelectSpells;
  @override
  @HiveField(6)
  List<Item> get quickSelectItems;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

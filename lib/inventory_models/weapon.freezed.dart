// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weapon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weapon _$WeaponFromJson(Map<String, dynamic> json) {
  return _Weapon.fromJson(json);
}

/// @nodoc
mixin _$Weapon {
  @HiveField(0)
  String get guid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get blurb => throw _privateConstructorUsedError;
  @HiveField(3)
  String get damage => throw _privateConstructorUsedError;
  @HiveField(4)
  String get damageType => throw _privateConstructorUsedError;
  @HiveField(5)
  List<String> get weaponProperties => throw _privateConstructorUsedError;
  @HiveField(6)
  List<String> get weaponType => throw _privateConstructorUsedError;
  @HiveField(7)
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponCopyWith<Weapon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponCopyWith<$Res> {
  factory $WeaponCopyWith(Weapon value, $Res Function(Weapon) then) =
      _$WeaponCopyWithImpl<$Res, Weapon>;
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) String damage,
      @HiveField(4) String damageType,
      @HiveField(5) List<String> weaponProperties,
      @HiveField(6) List<String> weaponType,
      @HiveField(7) String description});
}

/// @nodoc
class _$WeaponCopyWithImpl<$Res, $Val extends Weapon>
    implements $WeaponCopyWith<$Res> {
  _$WeaponCopyWithImpl(this._value, this._then);

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
    Object? damage = null,
    Object? damageType = null,
    Object? weaponProperties = null,
    Object? weaponType = null,
    Object? description = null,
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
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as String,
      damageType: null == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as String,
      weaponProperties: null == weaponProperties
          ? _value.weaponProperties
          : weaponProperties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weaponType: null == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeaponCopyWith<$Res> implements $WeaponCopyWith<$Res> {
  factory _$$_WeaponCopyWith(_$_Weapon value, $Res Function(_$_Weapon) then) =
      __$$_WeaponCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) String damage,
      @HiveField(4) String damageType,
      @HiveField(5) List<String> weaponProperties,
      @HiveField(6) List<String> weaponType,
      @HiveField(7) String description});
}

/// @nodoc
class __$$_WeaponCopyWithImpl<$Res>
    extends _$WeaponCopyWithImpl<$Res, _$_Weapon>
    implements _$$_WeaponCopyWith<$Res> {
  __$$_WeaponCopyWithImpl(_$_Weapon _value, $Res Function(_$_Weapon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? name = null,
    Object? blurb = null,
    Object? damage = null,
    Object? damageType = null,
    Object? weaponProperties = null,
    Object? weaponType = null,
    Object? description = null,
  }) {
    return _then(_$_Weapon(
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
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as String,
      damageType: null == damageType
          ? _value.damageType
          : damageType // ignore: cast_nullable_to_non_nullable
              as String,
      weaponProperties: null == weaponProperties
          ? _value._weaponProperties
          : weaponProperties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weaponType: null == weaponType
          ? _value._weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 8)
class _$_Weapon with DiagnosticableTreeMixin implements _Weapon {
  const _$_Weapon(
      {@HiveField(0) this.guid = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.blurb = '',
      @HiveField(3) this.damage = '',
      @HiveField(4) this.damageType = '',
      @HiveField(5) final List<String> weaponProperties = const [],
      @HiveField(6) final List<String> weaponType = const [],
      @HiveField(7) this.description = ''})
      : _weaponProperties = weaponProperties,
        _weaponType = weaponType;

  factory _$_Weapon.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponFromJson(json);

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
  final String damage;
  @override
  @JsonKey()
  @HiveField(4)
  final String damageType;
  final List<String> _weaponProperties;
  @override
  @JsonKey()
  @HiveField(5)
  List<String> get weaponProperties {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaponProperties);
  }

  final List<String> _weaponType;
  @override
  @JsonKey()
  @HiveField(6)
  List<String> get weaponType {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaponType);
  }

  @override
  @JsonKey()
  @HiveField(7)
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weapon(guid: $guid, name: $name, blurb: $blurb, damage: $damage, damageType: $damageType, weaponProperties: $weaponProperties, weaponType: $weaponType, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Weapon'))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('blurb', blurb))
      ..add(DiagnosticsProperty('damage', damage))
      ..add(DiagnosticsProperty('damageType', damageType))
      ..add(DiagnosticsProperty('weaponProperties', weaponProperties))
      ..add(DiagnosticsProperty('weaponType', weaponType))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weapon &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.blurb, blurb) || other.blurb == blurb) &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.damageType, damageType) ||
                other.damageType == damageType) &&
            const DeepCollectionEquality()
                .equals(other._weaponProperties, _weaponProperties) &&
            const DeepCollectionEquality()
                .equals(other._weaponType, _weaponType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      guid,
      name,
      blurb,
      damage,
      damageType,
      const DeepCollectionEquality().hash(_weaponProperties),
      const DeepCollectionEquality().hash(_weaponType),
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeaponCopyWith<_$_Weapon> get copyWith =>
      __$$_WeaponCopyWithImpl<_$_Weapon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponToJson(
      this,
    );
  }
}

abstract class _Weapon implements Weapon {
  const factory _Weapon(
      {@HiveField(0) final String guid,
      @HiveField(1) final String name,
      @HiveField(2) final String blurb,
      @HiveField(3) final String damage,
      @HiveField(4) final String damageType,
      @HiveField(5) final List<String> weaponProperties,
      @HiveField(6) final List<String> weaponType,
      @HiveField(7) final String description}) = _$_Weapon;

  factory _Weapon.fromJson(Map<String, dynamic> json) = _$_Weapon.fromJson;

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
  String get damage;
  @override
  @HiveField(4)
  String get damageType;
  @override
  @HiveField(5)
  List<String> get weaponProperties;
  @override
  @HiveField(6)
  List<String> get weaponType;
  @override
  @HiveField(7)
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponCopyWith<_$_Weapon> get copyWith =>
      throw _privateConstructorUsedError;
}

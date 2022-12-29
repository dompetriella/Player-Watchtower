// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return _Ability.fromJson(json);
}

/// @nodoc
mixin _$Ability {
  @HiveField(0)
  String get guid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get blurb => throw _privateConstructorUsedError;
  @HiveField(3)
  String get abilityCatergory => throw _privateConstructorUsedError;
  @HiveField(4)
  String get description => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get isQuickSelect => throw _privateConstructorUsedError;
  @HiveField(6)
  int get inventoryType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res, Ability>;
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) String abilityCatergory,
      @HiveField(4) String description,
      @HiveField(5) bool isQuickSelect,
      @HiveField(6) int inventoryType});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res, $Val extends Ability>
    implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

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
    Object? abilityCatergory = null,
    Object? description = null,
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
      abilityCatergory: null == abilityCatergory
          ? _value.abilityCatergory
          : abilityCatergory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$_AbilityCopyWith(
          _$_Ability value, $Res Function(_$_Ability) then) =
      __$$_AbilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) String abilityCatergory,
      @HiveField(4) String description,
      @HiveField(5) bool isQuickSelect,
      @HiveField(6) int inventoryType});
}

/// @nodoc
class __$$_AbilityCopyWithImpl<$Res>
    extends _$AbilityCopyWithImpl<$Res, _$_Ability>
    implements _$$_AbilityCopyWith<$Res> {
  __$$_AbilityCopyWithImpl(_$_Ability _value, $Res Function(_$_Ability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? name = null,
    Object? blurb = null,
    Object? abilityCatergory = null,
    Object? description = null,
    Object? isQuickSelect = null,
    Object? inventoryType = null,
  }) {
    return _then(_$_Ability(
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
      abilityCatergory: null == abilityCatergory
          ? _value.abilityCatergory
          : abilityCatergory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
@HiveType(typeId: 10)
class _$_Ability with DiagnosticableTreeMixin implements _Ability {
  const _$_Ability(
      {@HiveField(0) this.guid = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.blurb = '',
      @HiveField(3) this.abilityCatergory = '',
      @HiveField(4) this.description = '',
      @HiveField(5) this.isQuickSelect = false,
      @HiveField(6) this.inventoryType = 3});

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityFromJson(json);

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
  final String abilityCatergory;
  @override
  @JsonKey()
  @HiveField(4)
  final String description;
  @override
  @JsonKey()
  @HiveField(5)
  final bool isQuickSelect;
  @override
  @JsonKey()
  @HiveField(6)
  final int inventoryType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ability(guid: $guid, name: $name, blurb: $blurb, abilityCatergory: $abilityCatergory, description: $description, isQuickSelect: $isQuickSelect, inventoryType: $inventoryType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ability'))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('blurb', blurb))
      ..add(DiagnosticsProperty('abilityCatergory', abilityCatergory))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isQuickSelect', isQuickSelect))
      ..add(DiagnosticsProperty('inventoryType', inventoryType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ability &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.blurb, blurb) || other.blurb == blurb) &&
            (identical(other.abilityCatergory, abilityCatergory) ||
                other.abilityCatergory == abilityCatergory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isQuickSelect, isQuickSelect) ||
                other.isQuickSelect == isQuickSelect) &&
            (identical(other.inventoryType, inventoryType) ||
                other.inventoryType == inventoryType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, guid, name, blurb,
      abilityCatergory, description, isQuickSelect, inventoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityCopyWith<_$_Ability> get copyWith =>
      __$$_AbilityCopyWithImpl<_$_Ability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityToJson(
      this,
    );
  }
}

abstract class _Ability implements Ability {
  const factory _Ability(
      {@HiveField(0) final String guid,
      @HiveField(1) final String name,
      @HiveField(2) final String blurb,
      @HiveField(3) final String abilityCatergory,
      @HiveField(4) final String description,
      @HiveField(5) final bool isQuickSelect,
      @HiveField(6) final int inventoryType}) = _$_Ability;

  factory _Ability.fromJson(Map<String, dynamic> json) = _$_Ability.fromJson;

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
  String get abilityCatergory;
  @override
  @HiveField(4)
  String get description;
  @override
  @HiveField(5)
  bool get isQuickSelect;
  @override
  @HiveField(6)
  int get inventoryType;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityCopyWith<_$_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}

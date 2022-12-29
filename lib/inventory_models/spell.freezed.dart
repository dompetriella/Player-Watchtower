// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Spell _$SpellFromJson(Map<String, dynamic> json) {
  return _Spell.fromJson(json);
}

/// @nodoc
mixin _$Spell {
  @HiveField(0)
  String get guid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get blurb => throw _privateConstructorUsedError;
  @HiveField(3)
  int get spellLevel => throw _privateConstructorUsedError;
  @HiveField(5)
  String get range => throw _privateConstructorUsedError;
  @HiveField(6)
  String get castingTime => throw _privateConstructorUsedError;
  @HiveField(7)
  String get duration => throw _privateConstructorUsedError;
  @HiveField(8)
  String get school => throw _privateConstructorUsedError;
  @HiveField(9)
  List<String> get components => throw _privateConstructorUsedError;
  @HiveField(10)
  String get description => throw _privateConstructorUsedError;
  @HiveField(11)
  bool get isQuickSelect => throw _privateConstructorUsedError;
  @HiveField(12)
  int get inventoryType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpellCopyWith<Spell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellCopyWith<$Res> {
  factory $SpellCopyWith(Spell value, $Res Function(Spell) then) =
      _$SpellCopyWithImpl<$Res, Spell>;
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) int spellLevel,
      @HiveField(5) String range,
      @HiveField(6) String castingTime,
      @HiveField(7) String duration,
      @HiveField(8) String school,
      @HiveField(9) List<String> components,
      @HiveField(10) String description,
      @HiveField(11) bool isQuickSelect,
      @HiveField(12) int inventoryType});
}

/// @nodoc
class _$SpellCopyWithImpl<$Res, $Val extends Spell>
    implements $SpellCopyWith<$Res> {
  _$SpellCopyWithImpl(this._value, this._then);

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
    Object? spellLevel = null,
    Object? range = null,
    Object? castingTime = null,
    Object? duration = null,
    Object? school = null,
    Object? components = null,
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
      spellLevel: null == spellLevel
          ? _value.spellLevel
          : spellLevel // ignore: cast_nullable_to_non_nullable
              as int,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as String,
      castingTime: null == castingTime
          ? _value.castingTime
          : castingTime // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$_SpellCopyWith<$Res> implements $SpellCopyWith<$Res> {
  factory _$$_SpellCopyWith(_$_Spell value, $Res Function(_$_Spell) then) =
      __$$_SpellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String guid,
      @HiveField(1) String name,
      @HiveField(2) String blurb,
      @HiveField(3) int spellLevel,
      @HiveField(5) String range,
      @HiveField(6) String castingTime,
      @HiveField(7) String duration,
      @HiveField(8) String school,
      @HiveField(9) List<String> components,
      @HiveField(10) String description,
      @HiveField(11) bool isQuickSelect,
      @HiveField(12) int inventoryType});
}

/// @nodoc
class __$$_SpellCopyWithImpl<$Res> extends _$SpellCopyWithImpl<$Res, _$_Spell>
    implements _$$_SpellCopyWith<$Res> {
  __$$_SpellCopyWithImpl(_$_Spell _value, $Res Function(_$_Spell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? name = null,
    Object? blurb = null,
    Object? spellLevel = null,
    Object? range = null,
    Object? castingTime = null,
    Object? duration = null,
    Object? school = null,
    Object? components = null,
    Object? description = null,
    Object? isQuickSelect = null,
    Object? inventoryType = null,
  }) {
    return _then(_$_Spell(
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
      spellLevel: null == spellLevel
          ? _value.spellLevel
          : spellLevel // ignore: cast_nullable_to_non_nullable
              as int,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as String,
      castingTime: null == castingTime
          ? _value.castingTime
          : castingTime // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      components: null == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
@HiveType(typeId: 7)
class _$_Spell with DiagnosticableTreeMixin implements _Spell {
  const _$_Spell(
      {@HiveField(0) this.guid = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.blurb = '',
      @HiveField(3) this.spellLevel = 0,
      @HiveField(5) this.range = '',
      @HiveField(6) this.castingTime = '',
      @HiveField(7) this.duration = '',
      @HiveField(8) this.school = '',
      @HiveField(9) final List<String> components = const [],
      @HiveField(10) this.description = '',
      @HiveField(11) this.isQuickSelect = false,
      @HiveField(12) this.inventoryType = 2})
      : _components = components;

  factory _$_Spell.fromJson(Map<String, dynamic> json) =>
      _$$_SpellFromJson(json);

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
  final int spellLevel;
  @override
  @JsonKey()
  @HiveField(5)
  final String range;
  @override
  @JsonKey()
  @HiveField(6)
  final String castingTime;
  @override
  @JsonKey()
  @HiveField(7)
  final String duration;
  @override
  @JsonKey()
  @HiveField(8)
  final String school;
  final List<String> _components;
  @override
  @JsonKey()
  @HiveField(9)
  List<String> get components {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  @JsonKey()
  @HiveField(10)
  final String description;
  @override
  @JsonKey()
  @HiveField(11)
  final bool isQuickSelect;
  @override
  @JsonKey()
  @HiveField(12)
  final int inventoryType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Spell(guid: $guid, name: $name, blurb: $blurb, spellLevel: $spellLevel, range: $range, castingTime: $castingTime, duration: $duration, school: $school, components: $components, description: $description, isQuickSelect: $isQuickSelect, inventoryType: $inventoryType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Spell'))
      ..add(DiagnosticsProperty('guid', guid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('blurb', blurb))
      ..add(DiagnosticsProperty('spellLevel', spellLevel))
      ..add(DiagnosticsProperty('range', range))
      ..add(DiagnosticsProperty('castingTime', castingTime))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('school', school))
      ..add(DiagnosticsProperty('components', components))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isQuickSelect', isQuickSelect))
      ..add(DiagnosticsProperty('inventoryType', inventoryType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Spell &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.blurb, blurb) || other.blurb == blurb) &&
            (identical(other.spellLevel, spellLevel) ||
                other.spellLevel == spellLevel) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.castingTime, castingTime) ||
                other.castingTime == castingTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.school, school) || other.school == school) &&
            const DeepCollectionEquality()
                .equals(other._components, _components) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isQuickSelect, isQuickSelect) ||
                other.isQuickSelect == isQuickSelect) &&
            (identical(other.inventoryType, inventoryType) ||
                other.inventoryType == inventoryType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      guid,
      name,
      blurb,
      spellLevel,
      range,
      castingTime,
      duration,
      school,
      const DeepCollectionEquality().hash(_components),
      description,
      isQuickSelect,
      inventoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpellCopyWith<_$_Spell> get copyWith =>
      __$$_SpellCopyWithImpl<_$_Spell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpellToJson(
      this,
    );
  }
}

abstract class _Spell implements Spell {
  const factory _Spell(
      {@HiveField(0) final String guid,
      @HiveField(1) final String name,
      @HiveField(2) final String blurb,
      @HiveField(3) final int spellLevel,
      @HiveField(5) final String range,
      @HiveField(6) final String castingTime,
      @HiveField(7) final String duration,
      @HiveField(8) final String school,
      @HiveField(9) final List<String> components,
      @HiveField(10) final String description,
      @HiveField(11) final bool isQuickSelect,
      @HiveField(12) final int inventoryType}) = _$_Spell;

  factory _Spell.fromJson(Map<String, dynamic> json) = _$_Spell.fromJson;

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
  int get spellLevel;
  @override
  @HiveField(5)
  String get range;
  @override
  @HiveField(6)
  String get castingTime;
  @override
  @HiveField(7)
  String get duration;
  @override
  @HiveField(8)
  String get school;
  @override
  @HiveField(9)
  List<String> get components;
  @override
  @HiveField(10)
  String get description;
  @override
  @HiveField(11)
  bool get isQuickSelect;
  @override
  @HiveField(12)
  int get inventoryType;
  @override
  @JsonKey(ignore: true)
  _$$_SpellCopyWith<_$_Spell> get copyWith =>
      throw _privateConstructorUsedError;
}

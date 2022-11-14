// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playerSkill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerSkill _$PlayerSkillFromJson(Map<String, dynamic> json) {
  return _PlayerSkill.fromJson(json);
}

/// @nodoc
mixin _$PlayerSkill {
  String get skillName => throw _privateConstructorUsedError;
  String get skillType => throw _privateConstructorUsedError;
  bool get isProficient => throw _privateConstructorUsedError;
  bool get autoCalculated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerSkillCopyWith<PlayerSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSkillCopyWith<$Res> {
  factory $PlayerSkillCopyWith(
          PlayerSkill value, $Res Function(PlayerSkill) then) =
      _$PlayerSkillCopyWithImpl<$Res, PlayerSkill>;
  @useResult
  $Res call(
      {String skillName,
      String skillType,
      bool isProficient,
      bool autoCalculated});
}

/// @nodoc
class _$PlayerSkillCopyWithImpl<$Res, $Val extends PlayerSkill>
    implements $PlayerSkillCopyWith<$Res> {
  _$PlayerSkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? skillType = null,
    Object? isProficient = null,
    Object? autoCalculated = null,
  }) {
    return _then(_value.copyWith(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      skillType: null == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as String,
      isProficient: null == isProficient
          ? _value.isProficient
          : isProficient // ignore: cast_nullable_to_non_nullable
              as bool,
      autoCalculated: null == autoCalculated
          ? _value.autoCalculated
          : autoCalculated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerSkillCopyWith<$Res>
    implements $PlayerSkillCopyWith<$Res> {
  factory _$$_PlayerSkillCopyWith(
          _$_PlayerSkill value, $Res Function(_$_PlayerSkill) then) =
      __$$_PlayerSkillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String skillName,
      String skillType,
      bool isProficient,
      bool autoCalculated});
}

/// @nodoc
class __$$_PlayerSkillCopyWithImpl<$Res>
    extends _$PlayerSkillCopyWithImpl<$Res, _$_PlayerSkill>
    implements _$$_PlayerSkillCopyWith<$Res> {
  __$$_PlayerSkillCopyWithImpl(
      _$_PlayerSkill _value, $Res Function(_$_PlayerSkill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? skillType = null,
    Object? isProficient = null,
    Object? autoCalculated = null,
  }) {
    return _then(_$_PlayerSkill(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      skillType: null == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as String,
      isProficient: null == isProficient
          ? _value.isProficient
          : isProficient // ignore: cast_nullable_to_non_nullable
              as bool,
      autoCalculated: null == autoCalculated
          ? _value.autoCalculated
          : autoCalculated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerSkill with DiagnosticableTreeMixin implements _PlayerSkill {
  const _$_PlayerSkill(
      {required this.skillName,
      required this.skillType,
      this.isProficient = false,
      this.autoCalculated = true});

  factory _$_PlayerSkill.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerSkillFromJson(json);

  @override
  final String skillName;
  @override
  final String skillType;
  @override
  @JsonKey()
  final bool isProficient;
  @override
  @JsonKey()
  final bool autoCalculated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerSkill(skillName: $skillName, skillType: $skillType, isProficient: $isProficient, autoCalculated: $autoCalculated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerSkill'))
      ..add(DiagnosticsProperty('skillName', skillName))
      ..add(DiagnosticsProperty('skillType', skillType))
      ..add(DiagnosticsProperty('isProficient', isProficient))
      ..add(DiagnosticsProperty('autoCalculated', autoCalculated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerSkill &&
            (identical(other.skillName, skillName) ||
                other.skillName == skillName) &&
            (identical(other.skillType, skillType) ||
                other.skillType == skillType) &&
            (identical(other.isProficient, isProficient) ||
                other.isProficient == isProficient) &&
            (identical(other.autoCalculated, autoCalculated) ||
                other.autoCalculated == autoCalculated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, skillName, skillType, isProficient, autoCalculated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerSkillCopyWith<_$_PlayerSkill> get copyWith =>
      __$$_PlayerSkillCopyWithImpl<_$_PlayerSkill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerSkillToJson(
      this,
    );
  }
}

abstract class _PlayerSkill implements PlayerSkill {
  const factory _PlayerSkill(
      {required final String skillName,
      required final String skillType,
      final bool isProficient,
      final bool autoCalculated}) = _$_PlayerSkill;

  factory _PlayerSkill.fromJson(Map<String, dynamic> json) =
      _$_PlayerSkill.fromJson;

  @override
  String get skillName;
  @override
  String get skillType;
  @override
  bool get isProficient;
  @override
  bool get autoCalculated;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerSkillCopyWith<_$_PlayerSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

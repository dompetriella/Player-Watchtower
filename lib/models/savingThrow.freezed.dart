// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'savingThrow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavingThrow _$SavingThrowFromJson(Map<String, dynamic> json) {
  return _SavingThrow.fromJson(json);
}

/// @nodoc
mixin _$SavingThrow {
  String get skillName => throw _privateConstructorUsedError;
  int get skillModifier => throw _privateConstructorUsedError;
  bool get isProficient => throw _privateConstructorUsedError;
  bool get autoCalculated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavingThrowCopyWith<SavingThrow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingThrowCopyWith<$Res> {
  factory $SavingThrowCopyWith(
          SavingThrow value, $Res Function(SavingThrow) then) =
      _$SavingThrowCopyWithImpl<$Res, SavingThrow>;
  @useResult
  $Res call(
      {String skillName,
      int skillModifier,
      bool isProficient,
      bool autoCalculated});
}

/// @nodoc
class _$SavingThrowCopyWithImpl<$Res, $Val extends SavingThrow>
    implements $SavingThrowCopyWith<$Res> {
  _$SavingThrowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? skillModifier = null,
    Object? isProficient = null,
    Object? autoCalculated = null,
  }) {
    return _then(_value.copyWith(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      skillModifier: null == skillModifier
          ? _value.skillModifier
          : skillModifier // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_SavingThrowCopyWith<$Res>
    implements $SavingThrowCopyWith<$Res> {
  factory _$$_SavingThrowCopyWith(
          _$_SavingThrow value, $Res Function(_$_SavingThrow) then) =
      __$$_SavingThrowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String skillName,
      int skillModifier,
      bool isProficient,
      bool autoCalculated});
}

/// @nodoc
class __$$_SavingThrowCopyWithImpl<$Res>
    extends _$SavingThrowCopyWithImpl<$Res, _$_SavingThrow>
    implements _$$_SavingThrowCopyWith<$Res> {
  __$$_SavingThrowCopyWithImpl(
      _$_SavingThrow _value, $Res Function(_$_SavingThrow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? skillModifier = null,
    Object? isProficient = null,
    Object? autoCalculated = null,
  }) {
    return _then(_$_SavingThrow(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      skillModifier: null == skillModifier
          ? _value.skillModifier
          : skillModifier // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_SavingThrow with DiagnosticableTreeMixin implements _SavingThrow {
  const _$_SavingThrow(
      {required this.skillName,
      this.skillModifier = 0,
      this.isProficient = false,
      this.autoCalculated = true});

  factory _$_SavingThrow.fromJson(Map<String, dynamic> json) =>
      _$$_SavingThrowFromJson(json);

  @override
  final String skillName;
  @override
  @JsonKey()
  final int skillModifier;
  @override
  @JsonKey()
  final bool isProficient;
  @override
  @JsonKey()
  final bool autoCalculated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SavingThrow(skillName: $skillName, skillModifier: $skillModifier, isProficient: $isProficient, autoCalculated: $autoCalculated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SavingThrow'))
      ..add(DiagnosticsProperty('skillName', skillName))
      ..add(DiagnosticsProperty('skillModifier', skillModifier))
      ..add(DiagnosticsProperty('isProficient', isProficient))
      ..add(DiagnosticsProperty('autoCalculated', autoCalculated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingThrow &&
            (identical(other.skillName, skillName) ||
                other.skillName == skillName) &&
            (identical(other.skillModifier, skillModifier) ||
                other.skillModifier == skillModifier) &&
            (identical(other.isProficient, isProficient) ||
                other.isProficient == isProficient) &&
            (identical(other.autoCalculated, autoCalculated) ||
                other.autoCalculated == autoCalculated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, skillName, skillModifier, isProficient, autoCalculated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavingThrowCopyWith<_$_SavingThrow> get copyWith =>
      __$$_SavingThrowCopyWithImpl<_$_SavingThrow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavingThrowToJson(
      this,
    );
  }
}

abstract class _SavingThrow implements SavingThrow {
  const factory _SavingThrow(
      {required final String skillName,
      final int skillModifier,
      final bool isProficient,
      final bool autoCalculated}) = _$_SavingThrow;

  factory _SavingThrow.fromJson(Map<String, dynamic> json) =
      _$_SavingThrow.fromJson;

  @override
  String get skillName;
  @override
  int get skillModifier;
  @override
  bool get isProficient;
  @override
  bool get autoCalculated;
  @override
  @JsonKey(ignore: true)
  _$$_SavingThrowCopyWith<_$_SavingThrow> get copyWith =>
      throw _privateConstructorUsedError;
}

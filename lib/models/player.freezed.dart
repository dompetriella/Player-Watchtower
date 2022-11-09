// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String get characterName => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;
  String get playerClass => throw _privateConstructorUsedError;
  String get playerRace => throw _privateConstructorUsedError;
  String get alignment => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;
  int get currentHp => throw _privateConstructorUsedError;
  int get totalHp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {String characterName,
      int level,
      int exp,
      String playerClass,
      String playerRace,
      String alignment,
      String background,
      int currentHp,
      int totalHp});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterName = null,
    Object? level = null,
    Object? exp = null,
    Object? playerClass = null,
    Object? playerRace = null,
    Object? alignment = null,
    Object? background = null,
    Object? currentHp = null,
    Object? totalHp = null,
  }) {
    return _then(_value.copyWith(
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      playerClass: null == playerClass
          ? _value.playerClass
          : playerClass // ignore: cast_nullable_to_non_nullable
              as String,
      playerRace: null == playerRace
          ? _value.playerRace
          : playerRace // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      currentHp: null == currentHp
          ? _value.currentHp
          : currentHp // ignore: cast_nullable_to_non_nullable
              as int,
      totalHp: null == totalHp
          ? _value.totalHp
          : totalHp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$_PlayerCopyWith(_$_Player value, $Res Function(_$_Player) then) =
      __$$_PlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String characterName,
      int level,
      int exp,
      String playerClass,
      String playerRace,
      String alignment,
      String background,
      int currentHp,
      int totalHp});
}

/// @nodoc
class __$$_PlayerCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$_Player>
    implements _$$_PlayerCopyWith<$Res> {
  __$$_PlayerCopyWithImpl(_$_Player _value, $Res Function(_$_Player) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterName = null,
    Object? level = null,
    Object? exp = null,
    Object? playerClass = null,
    Object? playerRace = null,
    Object? alignment = null,
    Object? background = null,
    Object? currentHp = null,
    Object? totalHp = null,
  }) {
    return _then(_$_Player(
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      playerClass: null == playerClass
          ? _value.playerClass
          : playerClass // ignore: cast_nullable_to_non_nullable
              as String,
      playerRace: null == playerRace
          ? _value.playerRace
          : playerRace // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      currentHp: null == currentHp
          ? _value.currentHp
          : currentHp // ignore: cast_nullable_to_non_nullable
              as int,
      totalHp: null == totalHp
          ? _value.totalHp
          : totalHp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Player with DiagnosticableTreeMixin implements _Player {
  const _$_Player(
      {this.characterName = '',
      this.level = 1,
      this.exp = 0,
      this.playerClass = 'Fighter',
      this.playerRace = 'Human',
      this.alignment = 'True Neutral',
      this.background = 'Hermit',
      this.currentHp = 10,
      this.totalHp = 10});

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerFromJson(json);

  @override
  @JsonKey()
  final String characterName;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int exp;
  @override
  @JsonKey()
  final String playerClass;
  @override
  @JsonKey()
  final String playerRace;
  @override
  @JsonKey()
  final String alignment;
  @override
  @JsonKey()
  final String background;
  @override
  @JsonKey()
  final int currentHp;
  @override
  @JsonKey()
  final int totalHp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Player(characterName: $characterName, level: $level, exp: $exp, playerClass: $playerClass, playerRace: $playerRace, alignment: $alignment, background: $background, currentHp: $currentHp, totalHp: $totalHp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Player'))
      ..add(DiagnosticsProperty('characterName', characterName))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('exp', exp))
      ..add(DiagnosticsProperty('playerClass', playerClass))
      ..add(DiagnosticsProperty('playerRace', playerRace))
      ..add(DiagnosticsProperty('alignment', alignment))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('currentHp', currentHp))
      ..add(DiagnosticsProperty('totalHp', totalHp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Player &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.playerClass, playerClass) ||
                other.playerClass == playerClass) &&
            (identical(other.playerRace, playerRace) ||
                other.playerRace == playerRace) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.currentHp, currentHp) ||
                other.currentHp == currentHp) &&
            (identical(other.totalHp, totalHp) || other.totalHp == totalHp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characterName, level, exp,
      playerClass, playerRace, alignment, background, currentHp, totalHp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      __$$_PlayerCopyWithImpl<_$_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {final String characterName,
      final int level,
      final int exp,
      final String playerClass,
      final String playerRace,
      final String alignment,
      final String background,
      final int currentHp,
      final int totalHp}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get characterName;
  @override
  int get level;
  @override
  int get exp;
  @override
  String get playerClass;
  @override
  String get playerRace;
  @override
  String get alignment;
  @override
  String get background;
  @override
  int get currentHp;
  @override
  int get totalHp;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      throw _privateConstructorUsedError;
}

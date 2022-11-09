// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      characterName: json['characterName'] as String? ?? '',
      level: json['level'] as int? ?? 1,
      exp: json['exp'] as int? ?? 0,
      playerClass: json['playerClass'] as String? ?? 'Fighter',
      playerRace: json['playerRace'] as String? ?? 'Human',
      alignment: json['alignment'] as String? ?? 'True Neutral',
      background: json['background'] as String? ?? 'Hermit',
      currentHp: json['currentHp'] as int? ?? 10,
      totalHp: json['totalHp'] as int? ?? 10,
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'characterName': instance.characterName,
      'level': instance.level,
      'exp': instance.exp,
      'playerClass': instance.playerClass,
      'playerRace': instance.playerRace,
      'alignment': instance.alignment,
      'background': instance.background,
      'currentHp': instance.currentHp,
      'totalHp': instance.totalHp,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      characterName: json['characterName'] as String? ?? 'Player',
      level: json['level'] as int? ?? 1,
      exp: json['exp'] as int? ?? 0,
      playerClass: json['playerClass'] as String? ?? 'Fighter',
      playerRace: json['playerRace'] as String? ?? 'Human',
      alignment: json['alignment'] as String? ?? 'True Neutral',
      background: json['background'] as String? ?? 'Hermit',
      currentHp: json['currentHp'] as int? ?? 10,
      totalHp: json['totalHp'] as int? ?? 10,
      tempHp: json['tempHp'] as int? ?? 0,
      armorClass: json['armorClass'] as int? ?? 10,
      proficiency: json['proficiency'] as int? ?? 1,
      speed: json['speed'] as int? ?? 10,
      initiative: json['initiative'] as int? ?? 0,
      strength: json['strength'] as int? ?? 10,
      dexterity: json['dexterity'] as int? ?? 10,
      constitution: json['constitution'] as int? ?? 10,
      intellegence: json['intellegence'] as int? ?? 10,
      wisdom: json['wisdom'] as int? ?? 10,
      charisma: json['charisma'] as int? ?? 10,
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
      'tempHp': instance.tempHp,
      'armorClass': instance.armorClass,
      'proficiency': instance.proficiency,
      'speed': instance.speed,
      'initiative': instance.initiative,
      'strength': instance.strength,
      'dexterity': instance.dexterity,
      'constitution': instance.constitution,
      'intellegence': instance.intellegence,
      'wisdom': instance.wisdom,
      'charisma': instance.charisma,
    };

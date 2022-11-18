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
      strengthSavingThrow: json['strengthSavingThrow'] ??
          const SavingThrow(savingThrowName: 'strength'),
      dexterity: json['dexterity'] as int? ?? 10,
      dexteritySavingThrow: json['dexteritySavingThrow'] ??
          const SavingThrow(savingThrowName: 'dexterity'),
      constitution: json['constitution'] as int? ?? 10,
      constitutionSavingThrow: json['constitutionSavingThrow'] ??
          const SavingThrow(savingThrowName: 'constitution'),
      intellegence: json['intellegence'] as int? ?? 10,
      intellegenceSavingThrow: json['intellegenceSavingThrow'] ??
          const SavingThrow(savingThrowName: 'intellegence'),
      wisdom: json['wisdom'] as int? ?? 10,
      wisdomSavingThrow: json['wisdomSavingThrow'] ??
          const SavingThrow(savingThrowName: 'wisdom'),
      charisma: json['charisma'] as int? ?? 10,
      charismaSavingThrow: json['charismaSavingThrow'] ??
          const SavingThrow(savingThrowName: 'charisma'),
      acrobatics: json['acrobatics'] ??
          const PlayerSkill(skillName: 'acrobatics', skillType: 'dexterity'),
      animalHandling: json['animalHandling'] ??
          const PlayerSkill(skillName: 'animalHandling', skillType: 'wisdom'),
      arcana: json['arcana'] ??
          const PlayerSkill(skillName: 'arcana', skillType: 'intellegence'),
      athletics: json['athletics'] ??
          const PlayerSkill(skillName: 'athletics', skillType: 'strength'),
      deception: json['deception'] ??
          const PlayerSkill(skillName: 'deception', skillType: 'charisma'),
      history: json['history'] ??
          const PlayerSkill(skillName: 'history', skillType: 'intellegence'),
      insight: json['insight'] ??
          const PlayerSkill(skillName: 'insight', skillType: 'wisdom'),
      intimidation: json['intimidation'] ??
          const PlayerSkill(skillName: 'intimidation', skillType: 'charisma'),
      investigation: json['investigation'] ??
          const PlayerSkill(
              skillName: 'investigation', skillType: 'intellegence'),
      medicine: json['medicine'] ??
          const PlayerSkill(skillName: 'medicine', skillType: 'wisdom'),
      nature: json['nature'] ??
          const PlayerSkill(skillName: 'nature', skillType: 'intellegence'),
      perception: json['perception'] ??
          const PlayerSkill(skillName: 'perception', skillType: 'wisdom'),
      performance: json['performance'] ??
          const PlayerSkill(skillName: 'performance', skillType: 'charisma'),
      persuasion: json['persuasion'] ??
          const PlayerSkill(skillName: 'persuasion', skillType: 'charisma'),
      religion: json['religion'] ??
          const PlayerSkill(skillName: 'religion', skillType: 'intellegence'),
      sleightOfHand: json['sleightOfHand'] ??
          const PlayerSkill(skillName: 'sleightOfHand', skillType: 'dexterity'),
      stealth: json['stealth'] ??
          const PlayerSkill(skillName: 'stealth', skillType: 'dexterity'),
      survival: json['survival'] ??
          const PlayerSkill(skillName: 'survival', skillType: 'wisdom'),
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
      'strengthSavingThrow': instance.strengthSavingThrow,
      'dexterity': instance.dexterity,
      'dexteritySavingThrow': instance.dexteritySavingThrow,
      'constitution': instance.constitution,
      'constitutionSavingThrow': instance.constitutionSavingThrow,
      'intellegence': instance.intellegence,
      'intellegenceSavingThrow': instance.intellegenceSavingThrow,
      'wisdom': instance.wisdom,
      'wisdomSavingThrow': instance.wisdomSavingThrow,
      'charisma': instance.charisma,
      'charismaSavingThrow': instance.charismaSavingThrow,
      'acrobatics': instance.acrobatics,
      'animalHandling': instance.animalHandling,
      'arcana': instance.arcana,
      'athletics': instance.athletics,
      'deception': instance.deception,
      'history': instance.history,
      'insight': instance.insight,
      'intimidation': instance.intimidation,
      'investigation': instance.investigation,
      'medicine': instance.medicine,
      'nature': instance.nature,
      'perception': instance.perception,
      'performance': instance.performance,
      'persuasion': instance.persuasion,
      'religion': instance.religion,
      'sleightOfHand': instance.sleightOfHand,
      'stealth': instance.stealth,
      'survival': instance.survival,
    };

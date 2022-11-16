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
          const SavingThrow(skillName: 'strength'),
      dexterity: json['dexterity'] as int? ?? 10,
      dexteritySavingThrow: json['dexteritySavingThrow'] ??
          const SavingThrow(skillName: 'dexterity'),
      constitution: json['constitution'] as int? ?? 10,
      constitutionSavingThrow: json['constitutionSavingThrow'] ??
          const SavingThrow(skillName: 'constitution'),
      intellegence: json['intellegence'] as int? ?? 10,
      intellegenceSavingThrow: json['intellegenceSavingThrow'] ??
          const SavingThrow(skillName: 'intellegence'),
      wisdom: json['wisdom'] as int? ?? 10,
      wisdomSavingThrow:
          json['wisdomSavingThrow'] ?? const SavingThrow(skillName: 'wisdom'),
      charisma: json['charisma'] as int? ?? 10,
      charismaSavingThrow: json['charismaSavingThrow'] ??
          const SavingThrow(skillName: 'charisma'),
      acrobatics: json['acrobatics'] ??
          const PlayerSkill(skillName: 'acrobatics', skillType: 'dexterity'),
      animalHandling: json['animalHandling'] ??
          const PlayerSkill(skillName: 'animalHandling', skillType: 'wisdom'),
      arcana: json['arcana'] ??
          const PlayerSkill(skillName: 'arcana', skillType: 'intellegence'),
      atheletics: json['atheletics'] ??
          const PlayerSkill(skillName: 'atheletics', skillType: 'strength'),
      deception: json['deception'] ??
          const PlayerSkill(skillName: 'deception', skillType: 'charisma'),
      history: json['history'] ??
          const PlayerSkill(skillName: 'history', skillType: 'intellgence'),
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
      perfomance: json['perfomance'] ??
          const PlayerSkill(skillName: 'perfomance', skillType: 'charisma'),
      persuasian: json['persuasian'] ??
          const PlayerSkill(skillName: 'persuasian', skillType: 'charisma'),
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
      'atheletics': instance.atheletics,
      'deception': instance.deception,
      'history': instance.history,
      'insight': instance.insight,
      'intimidation': instance.intimidation,
      'investigation': instance.investigation,
      'medicine': instance.medicine,
      'nature': instance.nature,
      'perception': instance.perception,
      'perfomance': instance.perfomance,
      'persuasian': instance.persuasian,
      'religion': instance.religion,
      'sleightOfHand': instance.sleightOfHand,
      'stealth': instance.stealth,
      'survival': instance.survival,
    };

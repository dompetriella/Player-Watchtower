// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerAdapter extends TypeAdapter<_$_Player> {
  @override
  final int typeId = 0;

  @override
  _$_Player read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Player(
      characterName: fields[0] as String,
      guid: fields[1] as String,
      level: fields[2] as int,
      exp: fields[3] as int,
      playerClass: fields[4] as String,
      playerRace: fields[5] as String,
      alignment: fields[6] as String,
      background: fields[7] as String,
      currentHp: fields[8] as int,
      totalHp: fields[9] as int,
      tempHp: fields[10] as int,
      armorClass: fields[11] as int,
      proficiency: fields[12] as int,
      speed: fields[13] as int,
      initiative: fields[14] as int,
      strength: fields[15] as int,
      dexterity: fields[16] as int,
      constitution: fields[17] as int,
      intellegence: fields[18] as int,
      wisdom: fields[19] as int,
      charisma: fields[20] as int,
      strengthSavingThrow: fields[21] as dynamic,
      dexteritySavingThrow: fields[22] as dynamic,
      constitutionSavingThrow: fields[23] as dynamic,
      intellegenceSavingThrow: fields[24] as dynamic,
      wisdomSavingThrow: fields[25] as dynamic,
      charismaSavingThrow: fields[26] as dynamic,
      acrobatics: fields[27] as dynamic,
      animalHandling: fields[28] as dynamic,
      arcana: fields[29] as dynamic,
      athletics: fields[30] as dynamic,
      deception: fields[31] as dynamic,
      history: fields[32] as dynamic,
      intimidation: fields[33] as dynamic,
      investigation: fields[34] as dynamic,
      nature: fields[35] as dynamic,
      perception: fields[36] as dynamic,
      performance: fields[37] as dynamic,
      persuasion: fields[38] as dynamic,
      religion: fields[39] as dynamic,
      sleightOfHand: fields[40] as dynamic,
      stealth: fields[41] as dynamic,
      survival: fields[42] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Player obj) {
    writer
      ..writeByte(43)
      ..writeByte(0)
      ..write(obj.characterName)
      ..writeByte(1)
      ..write(obj.guid)
      ..writeByte(2)
      ..write(obj.level)
      ..writeByte(3)
      ..write(obj.exp)
      ..writeByte(4)
      ..write(obj.playerClass)
      ..writeByte(5)
      ..write(obj.playerRace)
      ..writeByte(6)
      ..write(obj.alignment)
      ..writeByte(7)
      ..write(obj.background)
      ..writeByte(8)
      ..write(obj.currentHp)
      ..writeByte(9)
      ..write(obj.totalHp)
      ..writeByte(10)
      ..write(obj.tempHp)
      ..writeByte(11)
      ..write(obj.armorClass)
      ..writeByte(12)
      ..write(obj.proficiency)
      ..writeByte(13)
      ..write(obj.speed)
      ..writeByte(14)
      ..write(obj.initiative)
      ..writeByte(15)
      ..write(obj.strength)
      ..writeByte(16)
      ..write(obj.dexterity)
      ..writeByte(17)
      ..write(obj.constitution)
      ..writeByte(18)
      ..write(obj.intellegence)
      ..writeByte(19)
      ..write(obj.wisdom)
      ..writeByte(20)
      ..write(obj.charisma)
      ..writeByte(21)
      ..write(obj.strengthSavingThrow)
      ..writeByte(22)
      ..write(obj.dexteritySavingThrow)
      ..writeByte(23)
      ..write(obj.constitutionSavingThrow)
      ..writeByte(24)
      ..write(obj.intellegenceSavingThrow)
      ..writeByte(25)
      ..write(obj.wisdomSavingThrow)
      ..writeByte(26)
      ..write(obj.charismaSavingThrow)
      ..writeByte(27)
      ..write(obj.acrobatics)
      ..writeByte(28)
      ..write(obj.animalHandling)
      ..writeByte(29)
      ..write(obj.arcana)
      ..writeByte(30)
      ..write(obj.athletics)
      ..writeByte(31)
      ..write(obj.deception)
      ..writeByte(32)
      ..write(obj.history)
      ..writeByte(33)
      ..write(obj.intimidation)
      ..writeByte(34)
      ..write(obj.investigation)
      ..writeByte(35)
      ..write(obj.nature)
      ..writeByte(36)
      ..write(obj.perception)
      ..writeByte(37)
      ..write(obj.performance)
      ..writeByte(38)
      ..write(obj.persuasion)
      ..writeByte(39)
      ..write(obj.religion)
      ..writeByte(40)
      ..write(obj.sleightOfHand)
      ..writeByte(41)
      ..write(obj.stealth)
      ..writeByte(42)
      ..write(obj.survival);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      characterName: json['characterName'] as String? ?? 'Player',
      guid: json['guid'] as String? ?? '',
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
      strengthSavingThrow: json['strengthSavingThrow'] ??
          const SavingThrow(savingThrowName: 'strength'),
      dexteritySavingThrow: json['dexteritySavingThrow'] ??
          const SavingThrow(savingThrowName: 'dexterity'),
      constitutionSavingThrow: json['constitutionSavingThrow'] ??
          const SavingThrow(savingThrowName: 'constitution'),
      intellegenceSavingThrow: json['intellegenceSavingThrow'] ??
          const SavingThrow(savingThrowName: 'intellegence'),
      wisdomSavingThrow: json['wisdomSavingThrow'] ??
          const SavingThrow(savingThrowName: 'wisdom'),
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
      'guid': instance.guid,
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
      'strengthSavingThrow': instance.strengthSavingThrow,
      'dexteritySavingThrow': instance.dexteritySavingThrow,
      'constitutionSavingThrow': instance.constitutionSavingThrow,
      'intellegenceSavingThrow': instance.intellegenceSavingThrow,
      'wisdomSavingThrow': instance.wisdomSavingThrow,
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

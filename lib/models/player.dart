import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/models/savingThrow.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  @HiveType(typeId: 0)
  const factory Player({
    @Default('Player') @HiveField(0) String characterName,
    @Default('') @HiveField(1) String guid,
    @Default(1) @HiveField(2) int level,
    @Default(0) @HiveField(3) int exp,
    @Default('Fighter') @HiveField(4) String playerClass,
    @Default('Human') @HiveField(5) String playerRace,
    @Default('True Neutral') @HiveField(6) String alignment,
    @Default('Hermit') @HiveField(7) String background,
    //
    @Default(10) @HiveField(8) int currentHp,
    @Default(10) @HiveField(9) int totalHp,
    @Default(0) @HiveField(10) int tempHp,
    @Default(10) @HiveField(11) int armorClass,
    @Default(1) @HiveField(12) int proficiency,
    @Default(10) @HiveField(13) int speed,
    @Default(0) @HiveField(14) int initiative,
    //
    @Default(10) @HiveField(15) int strength,
    @Default(10) @HiveField(16) int dexterity,
    @Default(10) @HiveField(17) int constitution,
    @Default(10) @HiveField(18) int intellegence,
    @Default(10) @HiveField(19) int wisdom,
    @Default(10) @HiveField(20) int charisma,
    //
    @Default(SavingThrow(savingThrowName: 'strength'))
    @HiveField(21)
        strengthSavingThrow,
    @Default(SavingThrow(savingThrowName: 'dexterity'))
    @HiveField(22)
        dexteritySavingThrow,
    @Default(SavingThrow(savingThrowName: 'constitution'))
    @HiveField(23)
        constitutionSavingThrow,
    @Default(SavingThrow(savingThrowName: 'intellegence'))
    @HiveField(24)
        intellegenceSavingThrow,
    @Default(SavingThrow(savingThrowName: 'wisdom'))
    @HiveField(25)
        wisdomSavingThrow,
    @Default(SavingThrow(savingThrowName: 'charisma'))
    @HiveField(26)
        charismaSavingThrow,
    //
    @Default(PlayerSkill(skillName: 'acrobatics', skillType: 'dexterity'))
    @HiveField(27)
        acrobatics,
    @Default(PlayerSkill(skillName: 'animalHandling', skillType: 'wisdom'))
    @HiveField(28)
        animalHandling,
    @Default(PlayerSkill(skillName: 'arcana', skillType: 'intellegence'))
    @HiveField(29)
        arcana,
    @Default(PlayerSkill(skillName: 'athletics', skillType: 'strength'))
    @HiveField(30)
        athletics,
    @Default(PlayerSkill(skillName: 'deception', skillType: 'charisma'))
    @HiveField(31)
        deception,
    @Default(PlayerSkill(skillName: 'history', skillType: 'intellegence'))
    @HiveField(32)
        history,
    @Default(PlayerSkill(skillName: 'insight', skillType: 'wisdom')) insight,
    @Default(PlayerSkill(skillName: 'intimidation', skillType: 'charisma'))
    @HiveField(33)
        intimidation,
    @Default(PlayerSkill(skillName: 'investigation', skillType: 'intellegence'))
    @HiveField(34)
        investigation,
    @Default(PlayerSkill(skillName: 'medicine', skillType: 'wisdom')) medicine,
    @Default(PlayerSkill(skillName: 'nature', skillType: 'intellegence'))
    @HiveField(35)
        nature,
    @Default(PlayerSkill(skillName: 'perception', skillType: 'wisdom'))
    @HiveField(36)
        perception,
    @Default(PlayerSkill(skillName: 'performance', skillType: 'charisma'))
    @HiveField(37)
        performance,
    @Default(PlayerSkill(skillName: 'persuasion', skillType: 'charisma'))
    @HiveField(38)
        persuasion,
    @Default(PlayerSkill(skillName: 'religion', skillType: 'intellegence'))
    @HiveField(39)
        religion,
    @Default(PlayerSkill(skillName: 'sleightOfHand', skillType: 'dexterity'))
    @HiveField(40)
        sleightOfHand,
    @Default(PlayerSkill(skillName: 'stealth', skillType: 'dexterity'))
    @HiveField(41)
        stealth,
    @Default(PlayerSkill(skillName: 'survival', skillType: 'wisdom'))
    @HiveField(42)
        survival,
        //
    @Default(0) @HiveField(43) int copper,
    @Default(0) @HiveField(44) int silver,
    @Default(0) @HiveField(45) int gold,
    @Default(0) @HiveField(46) int platinum,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

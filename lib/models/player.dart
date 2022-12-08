import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/models/savingThrow.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player extends HiveObject with _$Player {
  @HiveType(typeId: 0)
  const factory Player({
    @Default('Player') @HiveField(0) String characterName,
    @Default('') @HiveField(0) String guid,
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
    @Default(SavingThrow(savingThrowName: 'strength')) strengthSavingThrow,
    @Default(SavingThrow(savingThrowName: 'dexterity')) dexteritySavingThrow,
    @Default(SavingThrow(savingThrowName: 'constitution'))
        constitutionSavingThrow,
    @Default(SavingThrow(savingThrowName: 'intellegence'))
        intellegenceSavingThrow,
    @Default(SavingThrow(savingThrowName: 'wisdom')) wisdomSavingThrow,
    @Default(SavingThrow(savingThrowName: 'charisma')) charismaSavingThrow,
    //
    @Default(PlayerSkill(skillName: 'acrobatics', skillType: 'dexterity'))
        acrobatics,
    @Default(PlayerSkill(skillName: 'animalHandling', skillType: 'wisdom'))
        animalHandling,
    @Default(PlayerSkill(skillName: 'arcana', skillType: 'intellegence'))
        arcana,
    @Default(PlayerSkill(skillName: 'athletics', skillType: 'strength'))
        athletics,
    @Default(PlayerSkill(skillName: 'deception', skillType: 'charisma'))
        deception,
    @Default(PlayerSkill(skillName: 'history', skillType: 'intellegence'))
        history,
    @Default(PlayerSkill(skillName: 'insight', skillType: 'wisdom')) insight,
    @Default(PlayerSkill(skillName: 'intimidation', skillType: 'charisma'))
        intimidation,
    @Default(PlayerSkill(skillName: 'investigation', skillType: 'intellegence'))
        investigation,
    @Default(PlayerSkill(skillName: 'medicine', skillType: 'wisdom')) medicine,
    @Default(PlayerSkill(skillName: 'nature', skillType: 'intellegence'))
        nature,
    @Default(PlayerSkill(skillName: 'perception', skillType: 'wisdom'))
        perception,
    @Default(PlayerSkill(skillName: 'performance', skillType: 'charisma'))
        performance,
    @Default(PlayerSkill(skillName: 'persuasion', skillType: 'charisma'))
        persuasion,
    @Default(PlayerSkill(skillName: 'religion', skillType: 'intellegence'))
        religion,
    @Default(PlayerSkill(skillName: 'sleightOfHand', skillType: 'dexterity'))
        sleightOfHand,
    @Default(PlayerSkill(skillName: 'stealth', skillType: 'dexterity')) stealth,
    @Default(PlayerSkill(skillName: 'survival', skillType: 'wisdom')) survival,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

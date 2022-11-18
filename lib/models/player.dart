import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/models/savingThrow.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    @Default('Player') String characterName,
    @Default(1) int level,
    @Default(0) int exp,
    @Default('Fighter') String playerClass,
    @Default('Human') String playerRace,
    @Default('True Neutral') String alignment,
    @Default('Hermit') String background,
    //
    @Default(10) int currentHp,
    @Default(10) int totalHp,
    @Default(0) int tempHp,
    @Default(10) int armorClass,
    @Default(1) int proficiency,
    @Default(10) int speed,
    @Default(0) int initiative,
    //
    @Default(10) int strength,
    @Default(SavingThrow(savingThrowName: 'strength')) strengthSavingThrow,
    @Default(10) int dexterity,
    @Default(SavingThrow(savingThrowName: 'dexterity')) dexteritySavingThrow,
    @Default(10) int constitution,
    @Default(SavingThrow(savingThrowName: 'constitution'))
        constitutionSavingThrow,
    @Default(10) int intellegence,
    @Default(SavingThrow(savingThrowName: 'intellegence'))
        intellegenceSavingThrow,
    @Default(10) int wisdom,
    @Default(SavingThrow(savingThrowName: 'wisdom')) wisdomSavingThrow,
    @Default(10) int charisma,
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

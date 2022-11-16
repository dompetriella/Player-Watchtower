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
    @Default(SavingThrow(skillName: 'strength')) strengthSavingThrow,
    @Default(10) int dexterity,
    @Default(SavingThrow(skillName: 'dexterity')) dexteritySavingThrow,
    @Default(10) int constitution,
    @Default(SavingThrow(skillName: 'constitution')) constitutionSavingThrow,
    @Default(10) int intellegence,
    @Default(SavingThrow(skillName: 'intellegence')) intellegenceSavingThrow,
    @Default(10) int wisdom,
    @Default(SavingThrow(skillName: 'wisdom')) wisdomSavingThrow,
    @Default(10) int charisma,
    @Default(SavingThrow(skillName: 'charisma')) charismaSavingThrow,
    //
    @Default(PlayerSkill(skillName: 'acrobatics', skillType: 'dexterity'))
        acrobatics,
    @Default(PlayerSkill(skillName: 'animalHandling', skillType: 'wisdom'))
        animalHandling,
    @Default(PlayerSkill(skillName: 'arcana', skillType: 'intellegence'))
        arcana,
    @Default(PlayerSkill(skillName: 'atheletics', skillType: 'strength'))
        atheletics,
    @Default(PlayerSkill(skillName: 'deception', skillType: 'charisma'))
        deception,
    @Default(PlayerSkill(skillName: 'history', skillType: 'intellgence'))
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
    @Default(PlayerSkill(skillName: 'perfomance', skillType: 'charisma'))
        perfomance,
    @Default(PlayerSkill(skillName: 'persuasian', skillType: 'charisma'))
        persuasian,
    @Default(PlayerSkill(skillName: 'religion', skillType: 'intellegence'))
        religion,
    @Default(PlayerSkill(skillName: 'sleightOfHand', skillType: 'dexterity'))
        sleightOfHand,
    @Default(PlayerSkill(skillName: 'stealth', skillType: 'dexterity')) stealth,
    @Default(PlayerSkill(skillName: 'survival', skillType: 'wisdom')) survival,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

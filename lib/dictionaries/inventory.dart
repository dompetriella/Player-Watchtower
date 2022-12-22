import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<String> itemCategories = [
  'Custom',
  'Equipment',
  'Food',
  'Magical',
  'Miscellaneous',
  'Tools'
];

List<String> damageTypes = [
  'Custom',
  'Acid',
  'Bludgeoning',
  'Cold',
  'Fire',
  'Force',
  'Lightning',
  'Necrotic',
  'Piercing',
  'Poison',
  'Psychic',
  'Radiant',
  'Slashing',
  'Thunder'
];

List<String> diceDamageTypes = ['', 'd4', 'd6', 'd8', 'd10', 'd12', 'd20'];

List<String> weaponCatergories = [
  'Custom',
  'Martial Melee',
  'Martial Ranged',
  'Simple Melee',
  'Simple Ranged',
];

Map<String, int> spellLevelsDict = {
  'Cantrip': 0,
  'Level 1': 1,
  'Level 2': 2,
  'Level 3': 3,
  'Level 4': 4,
  'Level 5': 5,
  'Level 6': 6,
  'Level 7': 7,
  'Level 8': 8,
  'Level 9': 9
};

List<String> spellDurations = [
  'Custom',
  'Instantaneous',
  '1 Round',
  '1 Minute',
  '10 Minutes',
  '1 Hour',
  '8 Hours',
  '24 Hours'
];

List<String> schoolsOfMagic = [
  'Custom',
  'Abjuration',
  'Conjuration',
  'Divination',
  'Enchantment',
  'Evocation',
  'Illusion',
  'Necromancy',
  'Transmutation'
];

double size = 16;

Map<String, FaIcon> retrieveDamageTypeIconDict = {
  'Custom': FaIcon(
    FontAwesomeIcons.kitchenSet,
    color: Colors.white,
    size: size,
  ),
  'Acid': FaIcon(
    FontAwesomeIcons.cloudShowersWater,
    color: Colors.lightGreen,
    size: size,
  ),
  'Bludgeoning': FaIcon(
    FontAwesomeIcons.hammer,
    color: Colors.grey.shade700,
  ),
  'Cold': FaIcon(
    FontAwesomeIcons.snowflake,
    color: Colors.lightBlue,
    size: size,
  ),
  'Fire': FaIcon(
    FontAwesomeIcons.fire,
    color: Colors.orange,
    size: size,
  ),
  'Force': FaIcon(
    FontAwesomeIcons.handsClapping,
    color: Colors.amber,
  ),
  'Lightning': FaIcon(FontAwesomeIcons.bol),
  'Necrotic',
  'Piercing',
  'Poison',
  'Psychic',
  'Radiant',
  'Slashing',
  'Thunder'
};

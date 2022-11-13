String displayValue(var value) {
  if (value.runtimeType == int) {
    if (value > 0) {
      return '+${value.toString()}';
    }
  }
  return value.toString();
}

int getAbilityScoreModifier(int score) {
  if (score < 2) return -5;
  if (score < 4) return -4;
  if (score < 6) return -3;
  if (score < 8) return -2;
  if (score < 10) return -1;
  if (score < 12) return 0;
  if (score < 14) return 1;
  if (score < 16) return 2;
  if (score < 18) return 3;
  if (score < 22) return 4;
  if (score < 24) return 5;
  if (score < 26) return 6;
  if (score < 28) return 7;
  if (score < 30) return 8;
  if (score < 32) return 9;
  return 0;
}

int getProficiencyModifier(int level) {
  if (level < 5) return 2;
  if (level < 9) return 3;
  if (level < 13) return 4;
  if (level < 17) return 5;
  return 6;
}

int getPlayerLevelByExp(int exp) {
  if (exp < 300) return 1;
  if (exp < 900) return 2;
  if (exp < 2700) return 3;
  if (exp < 6500) return 4;
  if (exp < 14000) return 5;
  if (exp < 23000) return 6;
  if (exp < 34000) return 7;
  if (exp < 48000) return 8;
  if (exp < 64000) return 9;
  if (exp < 85000) return 10;
  if (exp < 100000) return 11;
  if (exp < 120000) return 12;
  if (exp < 140000) return 13;
  if (exp < 165000) return 14;
  if (exp < 195000) return 15;
  if (exp < 225000) return 16;
  if (exp < 265000) return 17;
  if (exp < 305000) return 18;
  if (exp < 355000) return 19;
  return 20;
}

Map<int, int> levelDict = {
  1: 0,
  2: 300,
  3: 900,
  4: 2700,
  5: 6500,
  6: 14000,
  7: 23000,
  8: 34000,
  9: 48000,
  10: 64000,
  11: 85000,
  12: 100000,
  13: 120000,
  14: 140000,
  15: 165000,
  16: 195000,
  17: 225000,
  18: 265000,
  19: 305000,
  20: 355000
};

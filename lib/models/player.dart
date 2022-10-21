class Player {
  final String characterName;
  final int level;
  final int exp;
  final String playerClass;
  final String playerRace;
  final String alignment;
  final String background;
  final int currentHp;
  final int totalHp;

  Player({
    required this.characterName,
    required this.level,
    required this.exp,
    required this.playerClass,
    required this.playerRace,
    required this.alignment,
    required this.background,
    //
    required this.currentHp,
    required this.totalHp,
  });

  Player copyWith({
    String? characterName,
    int? level,
    int? exp,
    String? playerClass,
    String? playerRace,
    String? alignment,
    String? background,
    //
    int? currentHp,
    int? totalHp,
  }) {
    return Player(
      characterName: characterName ?? this.characterName,
      level: level ?? this.level,
      exp: exp ?? this.exp,
      playerClass: playerClass ?? this.playerClass,
      playerRace: playerRace ?? this.playerRace,
      alignment: alignment ?? this.alignment,
      background: background ?? this.background,
      currentHp: currentHp ?? this.currentHp,
      totalHp: totalHp ?? this.totalHp,
    );
  }
}

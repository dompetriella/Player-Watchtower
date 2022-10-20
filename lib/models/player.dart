class Player {
  final String characterName;
  final int currentHp;
  final int totalHp;

  Player(
      {required this.characterName,
      required this.currentHp,
      required this.totalHp});

  Player copyWith({String? characterName, int? currentHp, int? totalHp}) {
    return Player(
      characterName: characterName ?? this.characterName,
      currentHp: currentHp ?? this.currentHp,
      totalHp: totalHp ?? this.totalHp,
    );
  }
}

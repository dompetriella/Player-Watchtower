import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'savingThrow.freezed.dart';
part 'savingThrow.g.dart';

@freezed
class SavingThrow with _$SavingThrow {
  @HiveType(typeId: 2)
  const factory SavingThrow({
    @HiveField(0) required String savingThrowName,
    @Default(0) @HiveField(1) int savingThrowModifier,
    @Default(false) @HiveField(2) bool isProficient,
    @Default(true) @HiveField(3) bool autoCalculated,
  }) = _SavingThrow;

  factory SavingThrow.fromJson(Map<String, dynamic> json) =>
      _$SavingThrowFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'savingThrow.freezed.dart';
part 'savingThrow.g.dart';

@freezed
class SavingThrow with _$SavingThrow {
  const factory SavingThrow({
    required String savingThrowName,
    @Default(0) int savingThrowModifier,
    @Default(false) bool isProficient,
    @Default(true) bool autoCalculated,
  }) = _SavingThrow;

  factory SavingThrow.fromJson(Map<String, dynamic> json) =>
      _$SavingThrowFromJson(json);
}

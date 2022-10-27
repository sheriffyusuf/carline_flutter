import 'dart:convert';

import 'package:flutter/widgets.dart';

class OutlinedButtonStyle {
  final Color borderColor;
  final Color textColor;
  OutlinedButtonStyle({
    required this.borderColor,
    required this.textColor,
  });

  OutlinedButtonStyle copyWith({
    Color? borderColor,
    Color? textColor,
  }) {
    return OutlinedButtonStyle(
      borderColor: borderColor ?? this.borderColor,
      textColor: textColor ?? this.textColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'borderColor': borderColor.value,
      'textColor': textColor.value,
    };
  }

  factory OutlinedButtonStyle.fromMap(Map<String, dynamic> map) {
    return OutlinedButtonStyle(
      borderColor: Color(map['borderColor']),
      textColor: Color(map['textColor']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OutlinedButtonStyle.fromJson(String source) =>
      OutlinedButtonStyle.fromMap(json.decode(source));

  @override
  String toString() =>
      'OutlinedButtonStyle(borderColor: $borderColor, textColor: $textColor)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OutlinedButtonStyle &&
        other.borderColor == borderColor &&
        other.textColor == textColor;
  }

  @override
  int get hashCode => borderColor.hashCode ^ textColor.hashCode;
}

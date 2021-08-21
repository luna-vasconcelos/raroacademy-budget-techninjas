import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Transaction {
  final String id;
  final String userId;
  final String? title;
  final double value;
  final DateTime date;
  final String category;
  final String type;
  final color;
  final icon;

  Transaction({
    required this.id,
    required this.userId,
    this.title,
    required this.value,
    required this.date,
    required this.category,
    required this.type,
    required this.icon,
    required this.color,
  });

  Transaction copyWith({
    String? id,
    String? userId,
    String? title,
    double? value,
    DateTime? date,
    String? category,
    String? type,
    Icon? icon,
  }) {
    return Transaction(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      value: value ?? this.value,
      date: date ?? this.date,
      category: category ?? this.category,
      type: type ?? this.type,
      icon: icon ?? this.icon,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'value': value,
      'date': date.millisecondsSinceEpoch,
      'category': category,
      'type': type,
      'icon': icon.toMap(),
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
        id: map['id'],
        userId: map['userId'],
        title: map['title'],
        value: map['value'],
        date: DateTime.fromMillisecondsSinceEpoch(map['date']),
        category: map['category'],
        type: map['type'],
        icon: map['icon'],
        color: map['color']);
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, title: $title, value: $value, date: $date, category: $category, type: $type, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Transaction &&
        other.id == id &&
        other.userId == userId &&
        other.title == title &&
        other.value == value &&
        other.date == date &&
        other.category == category &&
        other.type == type &&
        other.icon == icon;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        title.hashCode ^
        value.hashCode ^
        date.hashCode ^
        category.hashCode ^
        type.hashCode ^
        icon.hashCode;
  }
}

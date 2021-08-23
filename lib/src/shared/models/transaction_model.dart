import 'dart:convert';
import 'package:flutter/cupertino.dart';

class TransactionModel {
  final String? id;
  final String? userId;
  final String? title;
  final double? value;
  final DateTime date;
  final String category;
  final String type;
  final Color? color;
  final Icon? icon;

  TransactionModel({
    this.id,
    this.userId,
    this.title,
    required this.value,
    required this.date,
    required this.category,
    required this.type,
    this.icon,
    this.color,
  });

  TransactionModel copyWith({
    String? id,
    String? userId,
    String? title,
    double? value,
    DateTime? date,
    String? category,
    String? type,
    Icon? icon,
  }) {
    return TransactionModel(
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
      'icon': icon,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
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

  factory TransactionModel.fromJson(String source) =>
  TransactionModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TransactionModel(id: $id, userId: $userId, title: $title, value: $value, date: $date, category: $category, type: $type, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransactionModel &&
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

  // TransactionModel.fromJson(Map<String, Object?> json)
  //     : this(
  //         value: json['value']! as double,
  //         title: json['title']! as String,
  //         category: json['category']! as String,
  //         date: json['date']! as DateTime,
  //         type: json['type']! as String,
  //       );

  // Map<String, Object?> toJson() {
  //   return {
  //     'value': value,
  //     'title': title,
  //     'category': category,
  //     'date': date,
  //     'type': type,
  //   };
  // }
}

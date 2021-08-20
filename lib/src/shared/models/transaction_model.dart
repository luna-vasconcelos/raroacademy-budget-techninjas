import 'dart:convert';

class Transaction {
  final String id;
  final String userId;
  final String title;
  final double value;
  final DateTime date;
  final String category;
  final String type;

  Transaction(
    this.id,
    this.userId,
    this.title,
    this.value,
    this.date,
    this.category,
    this.type,
  );

  Transaction copyWith({
    String? id,
    String? userId,
    String? title,
    double? value,
    DateTime? date,
    String? category,
    String? type,
  }) {
    return Transaction(
      id ?? this.id,
      userId ?? this.userId,
      title ?? this.title,
      value ?? this.value,
      date ?? this.date,
      category ?? this.category,
      type ?? this.type,
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
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      map['id'],
      map['userId'],
      map['title'],
      map['value'],
      DateTime.fromMillisecondsSinceEpoch(map['date']),
      map['category'],
      map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, title: $title, value: $value, date: $date, category: $category, type: $type)';
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
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        title.hashCode ^
        value.hashCode ^
        date.hashCode ^
        category.hashCode ^
        type.hashCode;
  }
}

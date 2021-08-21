import 'dart:convert';

class Transaction {
  final String id;
  final String userId;
  final String? title;
  final double value;
  final DateTime date;
  final String category;
  final String type;

  Transaction({
    required this.id,
    required this.userId,
    this.title,
    required this.value,
    required this.date,
    required this.category,
    required this.type,
  });

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
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      value: value ?? this.value,
      date: date ?? this.date,
      category: category ?? this.category,
      type: type ?? this.type,
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
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      value: map['value'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      category: map['category'],
      type: map['type'],
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

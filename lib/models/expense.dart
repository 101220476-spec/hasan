import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var uuid = Uuid();

enum Category { food, work, leisure, travel }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  final String id = Uuid().v4();
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return DateFormat.yMd().format(date);
  }
}

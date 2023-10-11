import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final uuid = Uuid();
final formater = DateFormat.yMd();

enum Categoryy { food, travel, leisure, work }

const categoryIcons = {
  Categoryy.food: Icons.lunch_dining,
  Categoryy.travel: Icons.flight_takeoff,
  Categoryy.leisure: Icons.movie,
  Categoryy.work: Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.dateTime,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime dateTime;
  final Categoryy category;

  String get formatDate {
    return formater.format(dateTime);
  }
}

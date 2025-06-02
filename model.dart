import 'dart:ui';

class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

class Category {
  final String id;
  final String name;
  final String iconName;
  final Color color;
  final List<Question> questions;

  Category({
    required this.id,
    required this.name,
    required this.iconName,
    required this.color,
    required this.questions,
  });
}
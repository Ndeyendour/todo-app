import 'package:flutter/material.dart';

class Task {
  String title;
  String content;
  DateTime date;
  String priority;
  Color priorityColor;

  Task(
      {this.title, this.content, this.date, this.priority, this.priorityColor});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      content: json['content'],
      date: DateTime.parse(json['date']),
      priority: json['priority'],
      priorityColor: Color(json['priorityColor']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'date': date.toIso8601String(),
      'priority': priority,
      'priorityColor': priorityColor.value,
    };
  }
}

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

class TaskService {
  static const String _tasksKey = 'tasks';

  Future<void> saveTasks(List<Task> tasks) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> tasksJson =
        tasks.map((task) => jsonEncode(task.toJson())).toList();
    await prefs.setStringList(_tasksKey, tasksJson);
  }

  Future<List<Task>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> tasksJson = prefs.getStringList(_tasksKey) ?? [];
    List<Task> tasks = tasksJson
        .map((taskJson) => Task.fromJson(jsonDecode(taskJson)))
        .toList();
    return tasks;
  }
}

import 'package:flutter/material.dart';
import 'views/task_list_screen.dart';
import 'views/task_details_screen.dart';
import 'views/add_task_screen.dart';
import 'models/task.dart';

void main() => runApp(TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskListScreen(),
      routes: {
        // '/taskDetails': (context) => TaskDetailsScreen(task: null,),
        '/addTask': (context) => AddTaskScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/taskDetails') {
          final Object? task = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return TaskDetailsScreen(task: task);
            },
          );
        }
        return null;
      },
    );
  }
}

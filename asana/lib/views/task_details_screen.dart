import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskDetailsScreen extends StatelessWidget {
  final Task task;

  TaskDetailsScreen({@required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de la tâche'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Titre : ${task.title}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Contenu : ${task.content}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Date : ${task.date.toLocal().toString()}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Priorité : ${task.priority}',
                style: TextStyle(fontSize: 16, color: task.priorityColor)),
          ],
        ),
      ),
    );
  }
}

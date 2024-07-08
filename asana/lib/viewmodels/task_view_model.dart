import '../models/task.dart';
import '../services/task_service.dart';

class TaskViewModel {
  List<Task> tasks = [];
  TaskService _taskService = TaskService();

  TaskViewModel() {
    _loadTasks();
  }

  void addTask(Task task) {
    tasks.add(task);
    _saveTasks();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    _saveTasks();
  }

  Future<void> _saveTasks() async {
    await _taskService.saveTasks(tasks);
  }

  Future<void> _loadTasks() async {
    tasks = await _taskService.loadTasks();
  }
}

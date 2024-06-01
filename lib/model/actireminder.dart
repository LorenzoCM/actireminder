class ActireminderModel {
  String? id;
  String? todoText;
  bool isDone;

  ActireminderModel({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ActireminderModel> todoList() {
    return [];
  }
}

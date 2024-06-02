class ActireminderModel {
  String id;
  String? todoText;
  bool isDone;

  ActireminderModel({
    required this.id,
    this.todoText,
    this.isDone = false,
  });

  factory ActireminderModel.fromJson(Map<String, dynamic> json) {
    return ActireminderModel(
      id: json['id'],
      todoText: json['todoText'],
      isDone: json['isDone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
    };
  }

  static List<ActireminderModel> todoList() {
    return [];
  }
}

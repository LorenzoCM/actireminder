import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:actireminder/widgets/todo_item.dart';
import 'package:actireminder/model/actireminder.dart';

void main() {
  testWidgets('Actireminder item displays correct text and icon',
      (WidgetTester tester) async {
    final mockTodo = ActireminderModel(
        id: '1', todoText: 'Test ActiReminder', isDone: false);

    var onChangedCalled = false;
    var onDeleteCalled = false;

    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      body: ToDoItem(
        todo: mockTodo,
        onToDoChanged: (todo) => onChangedCalled = true,
        onDeleteItem: (id) => onDeleteCalled = true,
      ),
    )));

    expect(find.text('Test ActiReminder'), findsOneWidget);
    expect(find.byIcon(Icons.check_box_outline_blank), findsOneWidget);

    await tester.tap(find.byType(IconButton));
    expect(onDeleteCalled, isTrue);

    await tester.tap(find.byType(ListTile));
    expect(onChangedCalled, isTrue);
  });
}

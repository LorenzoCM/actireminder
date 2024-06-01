import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:actireminder/screens/home.dart';
import 'package:actireminder/widgets/todo_item.dart';

void main() {
  testWidgets('Home widget has a search box and list of todos',
      (WidgetTester tester) async {
    // Infla el widget Home en el entorno de prueba
    await tester.pumpWidget(const MaterialApp(home: Home()));

    // Verifica si el widget Home contiene una caja de búsqueda
    expect(find.byType(TextField), findsWidgets);

    // Verifica si el widget Home contiene una lista de elementos ToDo
    expect(find.byType(ToDoItem), findsWidgets);
  });
}

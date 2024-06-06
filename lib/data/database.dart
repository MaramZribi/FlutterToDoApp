 import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference the box
  final _myBox = Hive.box('MyBox');
  // run this method if thi is the first time ever opening the
  void createInitialData() {
    toDoList = [
      ["Make Tuto", false],
      ["Do Exercice", false],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}

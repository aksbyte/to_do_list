import 'package:hive_flutter/adapters.dart';

class ToDoDataBase{
  List toDoList = [];
  // Reference our box
  final _myBox = Hive.box('myBox');

  // run only first time open this app
void createInitialData(){
  toDoList = [
    ["Today's task", false],
    ["Need to buy", false],
  ];
}
// load the data from database
void loadData(){
  toDoList = _myBox.get("TODOLIST");
}
void updateDatabase(){
  _myBox.put("TODOLIST", toDoList);
}
}
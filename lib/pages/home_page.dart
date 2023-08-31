import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_list/data/database.dart';
import 'package:to_do_list/util/dialog_box.dart';
import 'package:to_do_list/util/drawer.dart';
import '../util/themes.dart';
import '../util/todo_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Reference the hive
  final _myBox = Hive.box('myBox');
  ToDoDataBase db = ToDoDataBase();
  final _controller = TextEditingController();
  final themes = ColorUtils();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    if(_myBox.get("TODOLIST") == null){
      db.createInitialData();
    }else{
        //there are already data
      db.loadData();
    }
    super.initState();
  }
  void checkedBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
      //toDoList[index][1] = value!;
    });
    db.updateDatabase();
  }
  void saveNewTask(){
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }
  void createNewTask() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }
  void deleteTask(int index){
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0.3),
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      drawer: const CustomDrawer(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        centerTitle: true,
        //backgroundColor: Colors.white30.withOpacity(0.3),
        backgroundColor: Colors.transparent,
        title: const Text(
              'To-Do app',
            ),
        elevation: 1.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/theme_photos/theme1.jpg'),
              fit: BoxFit.cover),
          //color: themes.backgroundThemes[selectedTheme],
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
            child: ListView.builder(
              itemCount: db.toDoList.length,
              itemBuilder: (context, index) {
                return ToDoTile(
                  taskName: db.toDoList[index][0],
                  taskCompleted: db.toDoList[index][1],
                  onChanged: (value) => checkedBoxChanged(value, index),
                  deleteFunction: (context)=> deleteTask(index),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

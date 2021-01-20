import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TodoController extends GetxController {
  final box = GetStorage();
  TextEditingController to = TextEditingController();
  bool checkbox = false;
  List todos = [];
  List completed = [];
  void check() {
    checkbox = !checkbox;
    update();
  }

  void add() async {
    todos.add(to.text);
    await box.write("todos", todos);
    to.clear();
    update();
  }

  void remove(int index) async {
    todos.removeAt(index);
    await box.write("todos", todos);
    update();
  }

  void completedfun(int index) async {
    if (completed.contains(todos[index])) {
      completed.remove(todos[index]);
      box.write("completed", completed);
    } else {
      completed.add(todos[index]);
      box.write("completed", completed);
    }
    update();
  }
getfromstore()async{
    if (box.hasData("todos")) {
      todos = box.read("todos");
    }
    if (box.hasData("completed")) {
      completed = box.read("completed");
    }
    update();
}
  checked(int index) {
    if (completed.contains(todos[index])) {
      return true;
    } else {
      return false;
    }
  }
}

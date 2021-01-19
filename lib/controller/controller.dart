import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  TextEditingController to = TextEditingController();
  bool checkbox = false;
  List<String> todos = [];
  List<String> completed = [];
  void check() {
    checkbox = !checkbox;
    update();
  }

  void add() async {
    todos.add(to.text);
    update();
  }

  void remove(int index) async {
    todos.removeAt(index);
    update();
  }

  void completedfun(int index) async {
    if (completed.contains(todos[index])) {
      completed.remove(todos[index]);
    } else {
      completed.add(todos[index]);
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

import 'package:farmmanage/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class History extends StatelessWidget {
  TodoController todoController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 46, 86, 1),
      appBar: AppBar(
        title: Text("History",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: todoController.completed.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todoController.completed[index],style: TextStyle(color: Colors.white,fontSize: 20),),
              leading: Icon(Icons.done,color: Colors.white,),
            );
          }),
    );
  }
}

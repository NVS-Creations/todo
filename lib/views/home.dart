import 'package:farmmanage/controller/controller.dart';
import 'package:farmmanage/views/drawer.dart';
import 'package:farmmanage/views/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final TodoController todoController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO LIST"),
        backgroundColor: Colors.pink,
      ),
      drawer: Container(
        width: Get.width * .5,
        child: Drawer(
          child: DrawerScreen(),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(37, 46, 86, 1),
        child: Column(
          children: [
            Expanded(child: GetBuilder<TodoController>(builder: (_) {
              return ListView.builder(
                  itemCount: _.todos.length,
                  itemBuilder: (context, index) {
                    return ListCard(index: index);
                  });
            })),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          Get.bottomSheet(Container(
            height: Get.height * .3,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all()),
                    child: TextField(
                      controller: todoController.to,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    color: Colors.pink,
                    child: Text(
                      "ADD",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      todoController.add();
                      Navigator.pop(context);
                    }),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

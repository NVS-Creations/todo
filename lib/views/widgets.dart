import 'package:farmmanage/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCard extends StatelessWidget {
  int index;
  ListCard({Key key, @required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: Get.width,
        child: GetBuilder<TodoController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                  value: _.checked(index),
                  onChanged: (val) => _.completedfun(index)),
              Text(
                _.todos[index],
                style: TextStyle(color: Colors.white),
              ),
              InkWell(
                onTap: () => _.remove(index),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Icon(
                    Icons.remove,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

import './views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller/controller.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final todoController = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

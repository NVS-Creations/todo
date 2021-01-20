import 'package:get_storage/get_storage.dart';

import './views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller/controller.dart';

main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final todoController = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    todoController.getfromstore();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

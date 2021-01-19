import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 46, 86, 1),
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Center(
          child: Text("😈 அது நான்தான் 😈" , style: TextStyle(color: Colors.white,fontSize: 25),),
        ),
      ),
    );
  }
}

import 'package:farmmanage/views/about.dart';
import 'package:farmmanage/views/history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: Get.height * .2,
                ),
                InkWell(
                  onTap:() => Get.to(History()),
                  child: Row(
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "History",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: ()=> Get.to(About()),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("About us", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String label;
  const NotifiedPage({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Get.isDarkMode ? Colors.white : Colors.grey,
        ),
        title: Text(
          label.split("|")[0],
          style:
              TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black87),
        ),
      ),
      body: Container(
          margin: const EdgeInsets.all(20),
          child: Text(
            label.split("|")[1],
            style: TextStyle(
                color: Get.isDarkMode ? Colors.white : Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}

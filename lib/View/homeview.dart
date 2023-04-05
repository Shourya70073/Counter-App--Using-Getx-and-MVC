// ignore_for_file: implementation_imports

import 'package:counterapp/Controller/countercontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

// ignore: camel_case_types, must_be_immutable
class homeview extends StatelessWidget {
  counterController ob = Get.put(counterController());
  homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  ob.cb.value.counter.toString(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ob.increment();
                },
                child: const Text("Press Me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

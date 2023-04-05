import 'package:counterapp/Modal/counter.dart';
import 'package:get/get.dart';

class counterController extends GetxController {
  Rx<Counter> cb = Counter(counter: 1).obs;

  void increment() {
    cb.update((cb) {
      cb!.counter 
      +=1;
    });
  }
}

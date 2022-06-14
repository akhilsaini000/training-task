import 'package:get/get.dart';
import 'package:provider_tutorial/model/product.dart';

class MyController extends GetxController {
  List<Product> sProducts = <Product>[].obs;
  var count = 1.obs;

  increment() {
    count.value++;
  }

  decrement() {
    count.value--;
  }
}

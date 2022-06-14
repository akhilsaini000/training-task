import 'package:get/get.dart';
import 'package:provider_tutorial/model/product.dart';
import 'package:provider_tutorial/service/product_service.dart';

class ShoppingController extends GetxController {
  List<Product> products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    products.assignAll(ProductService().getProducts().toList());
  }
}

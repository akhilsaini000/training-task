import 'package:get/get.dart';
import 'package:provider_tutorial/model/product.dart';

class CartController extends GetxController {
  List<Product> selectedProducts = <Product>[].obs;

  void addProductToCart(Product product) {
    selectedProducts.add(product);
    update();
  }

  void removeProductsFromCart(Product product) {
    selectedProducts.remove(product);
    update();
  }

  void increaseQuantity(index) {
    selectedProducts[index].quantity++;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  void decreaseQuantity(index) {
    selectedProducts[index].quantity--;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProduct) => total + selectedProduct.price);
}

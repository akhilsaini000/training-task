import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_tutorial/service/cart_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('User Cart'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent),
      body: GetBuilder<CartController>(builder: ((controller) {
        return Column(children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
                itemCount: controller.selectedProducts.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Row(children: [
                      Expanded(
                        child: Image.network(
                            controller.selectedProducts[index].imageUrl),
                      ),
                      Expanded(
                        child: Text(
                            controller.selectedProducts[index].productName),
                      ),
                      Expanded(
                        child: Text(controller.selectedProducts[index].price
                            .toString()),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            onPressed: () => controller.increaseQuantity(index),
                            child: const Icon(Icons.add)),
                      ),
                      const SizedBox(width: 20),
                      Obx(
                        () => Text(
                          controller.selectedProducts[index].quantity
                              .toString(),
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                          onPressed: () => controller.decreaseQuantity(index),
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                          onPressed: () => controller.removeProductsFromCart(
                              controller.selectedProducts[index]),
                          child: const Icon(Icons.delete),
                        ),
                      ),
                    ]),
                  ]);
                }),
          ),
          Text(
            'Total Price : Rs. ${controller.totalCost}',
            style: const TextStyle(fontSize: 30.0),
          )
        ]);
      })),
    );
  }
}



 /*SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: controller.selectedProducts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            controller.selectedProducts[index].imageUrl),
                        title: Text(
                            controller.selectedProducts[index].productName),
                        subtitle: Text(controller.selectedProducts[index].price
                            .toString()),
                        trailing: ElevatedButton(
                            onPressed: () {
                              controller.removeProductsFromCart(
                                  controller.selectedProducts[index]);
                            },
                            child: const Icon(Icons.remove)),
                      );
                    }),
              ),*/
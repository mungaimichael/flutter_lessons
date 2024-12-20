import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/getProductController.dart';

class ProductPage extends StatelessWidget {
  final int productId;

  ProductPage({required this.productId});

  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    // Fetch product details when this page is opened.
    controller.fetchProduct(productId);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.product.isEmpty) {
          return const Center(
            child: Text("Product not found."),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(controller.product['image']),
              const SizedBox(height: 16),
              Text(
                controller.product['title'],
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                "\$${controller.product['price']}",
                style: const TextStyle(fontSize: 20, color: Colors.green),
              ),
              const SizedBox(height: 16),
              Text(
                controller.product['description'],
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      }),
    );
  }
}

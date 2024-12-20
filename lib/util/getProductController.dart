import 'package:get/get.dart';
import 'package:dio/dio.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var product = {}.obs;

  final Dio dio = Dio();

  Future<void> fetchProduct(int id) async {
    try {
      isLoading(true);
      var response = await dio.get("https://fakestoreapi.com/products/$id");
      if (response.statusCode == 200) {
        product.value = response.data;
      } else {
        throw Exception("Failed to fetch product with code ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Failed to fetch product with error $e");
    } finally {
      isLoading(false);
    }
  }
}

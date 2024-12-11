import "package:dio/dio.dart";

    Dio dio = Dio(
      options
    );

    final options = BaseOptions(
      baseUrl: "https://fakestoreapi.com/products" ,
      connectTimeout: Duration(seconds: 30)
    );

    Future<List<dynamic>> getProducts() async {
      try{
        var response = await dio.get("");
        if (response.statusCode == 200){
          return response.data;
        }
        else {
          throw Exception("Failed to fetch products with code ${response.statusCode}");
        }
      }
      catch(e){
        throw Exception("Failed to fetch products with error $e");
      }
    }
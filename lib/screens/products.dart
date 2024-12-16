import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/widgets/ProductItem.dart';

import '../util/dio_functions.dart';

Future<List<dynamic>> getProducts() async {
  try{
    var response = await dio.get("https://fakestoreapi.com/products");
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

class Products  extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FutureBuilder<List<dynamic>>(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(

              itemCount: 5,
              itemBuilder: (context, index) {
                return ProductItem(
                  title: snapshot.data![index]['title'].toString(),
                  image: snapshot.data![index]['image'].toString(),
                  price: snapshot.data![index]['price'].toString(),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default, show a loading spinner.
          return Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }

}
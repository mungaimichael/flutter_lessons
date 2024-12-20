import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/product.dart';
import 'package:flutter_lessons/widgets/ProductItem.dart';
import 'package:get/get.dart';


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

class Products  extends StatefulWidget {
  const Products({super.key});

  @override
  _ScreenState createState() => _ScreenState();

}


class _ScreenState extends State<Products> {
  late Future<List<dynamic>> dataFuture;

  @override
  void initState() {
    super.initState();
    dataFuture = getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FutureBuilder<List<dynamic>>(
        future: dataFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {

                return
                  GestureDetector(
                      onTap: () {
                        Get.to(() => ProductPage(productId: snapshot.data![index]['id']));
                      },
                      child: ProductItem
                  (
                  title: snapshot.data![index]['title'].toString(),
                  image: snapshot.data![index]['image'].toString(),
                  price: snapshot.data![index]['price'].toString(),
                ));
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default, show a loading spinner.
          return const Center(child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              CircularProgressIndicator(
                color: Colors.orangeAccent,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text("Loading..."),
              ),
            ],
          ));
        },
      ),
    );
  }
}
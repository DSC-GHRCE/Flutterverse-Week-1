import '../Helpers/ProductDetails.dart';

class Product {
  String brand;
  String product;
  String collection;
  String price;
  String year;
  bool isFav;
  String productImg;

  Product({
    required this.brand,
    required this.product,
    required this.collection,
    required this.price,
    required this.year,
    this.isFav = false,
    required this.productImg,
  });
}

class ProductAccess {
  ProductAccess(){
    generateProductList;
  }
  List<Product> listOfProducts = [];

  void get generateProductList {
    for (var val in products) {
      listOfProducts.add(Product(
          brand: val['brand']!,
          product: val['product']!,
          collection: val['collection']!,
          price: val['price']!,
          year: val['year']!,
          productImg: val['productImg']!));
    }
  }
  List get productList {
    return listOfProducts;
  }

}
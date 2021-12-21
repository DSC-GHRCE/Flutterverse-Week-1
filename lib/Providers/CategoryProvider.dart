import '../Helpers/ProductCategories.dart';

class Category {
  String label;
  String image;

  Category({
    required this.label,
    required this.image,
  });
}

class CategoryAccess {
  CategoryAccess(){
    generateCategoryList;
  }
  List<Category> listOfCategories = [];

  void get generateCategoryList {
    for (var val in categories) {
      listOfCategories.add(Category(
          label: val['label']!,
          image: val['imageURL']!,));
    }
  }
  List get categoryList {
    return listOfCategories;
  }

}
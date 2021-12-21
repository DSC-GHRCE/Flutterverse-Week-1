import 'package:flutter/material.dart';
import '../Providers/CategoryProvider.dart';
import '../Providers/ProductProvider.dart';
import '../Widgets/CategoryCaseWidget.dart';
import '../Widgets/ProductCaseWidget.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;
    ProductAccess prd = ProductAccess();
    CategoryAccess categories = CategoryAccess();
    List<Product> newArrivals = prd.listOfProducts.where((element) => element.year == '2021').toList();
    List<Product> popular = prd.listOfProducts.where((element) => element.year == '2020').toList();
    List<Category> listOfCategory = categories.listOfCategories;
    Size _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          const Center(
              child: Text(
                  'New Arrival',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 340,
            width: _screenSize.width,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: newArrivals.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  if(index == 0){
                    return Row(
                      children: [
                        const SizedBox(width: 20,),
                        ProductCase(item: newArrivals[index], index: index, lenOfList: newArrivals.length,),
                      ],
                    );
                  }
                  else if(index == newArrivals.length - 1){
                    return Row(
                      children: [
                        ProductCase(item: newArrivals[index], index: index, lenOfList: newArrivals.length,),
                        const SizedBox(width: 20,),
                      ],
                    );
                  }
                  else{
                    return ProductCase(item: newArrivals[index], index: index, lenOfList: newArrivals.length,);
                  }
            }),
          ),
          const SizedBox(height: 10,),
          const Center(
              child: Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 340,
            width: _screenSize.width,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: popular.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  if(index == 0){
                    return Row(
                      children: [
                        const SizedBox(width: 20,),
                        ProductCase(item: popular[index], index: index, lenOfList: popular.length,),
                      ],
                    );
                  }
                  else if(index == popular.length - 1){
                    return Row(
                      children: [
                        ProductCase(item: popular[index], index: index, lenOfList: popular.length,),
                        const SizedBox(width: 20,),
                      ],
                    );
                  }
                  else{
                    return ProductCase(item: popular[index], index: index, lenOfList: popular.length,);
                  }
                }),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20,),
              Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide( //                   <--- left side
                      color: Colors.black,
                      width: 3.0,
                    ),
                  )
                ),
                child: const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const Expanded(child: SizedBox(width: 15,)),
              const Icon(Icons.person_search_rounded,size: 40,),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 10,),
          const SizedBox(height: 20,),
          Column(
            children: [
              CategoryCase(categoryItem: listOfCategory[0]),
              const SizedBox(height: 10,),
              CaseRow(listOfCategory: listOfCategory, a: 1, b: 2),
              const SizedBox(height: 10,),
              CaseRow(listOfCategory: listOfCategory, a: 3, b: 4),
              const SizedBox(height: 10,),
              CategoryCase(categoryItem: listOfCategory[5]),
              const SizedBox(height: 20,),
            ],
          ),
          SizedBox(height: bottomPadding,),
        ],
      ),
    );
  }
}





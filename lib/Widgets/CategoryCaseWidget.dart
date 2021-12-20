import 'package:flutter/material.dart';
import '../Providers/CategoryProvider.dart';

class CategoryCase extends StatelessWidget {
  const CategoryCase({
    Key? key,
    required this.categoryItem,
  }) : super(key: key);

  final Category categoryItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: SizedBox(
                  child: Image.network(
                    categoryItem.image,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: 150,
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                categoryItem.label,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCaseAlt extends StatelessWidget {
  const CategoryCaseAlt({
    Key? key,
    required this.categoryItem,
  }) : super(key: key);

  final Category categoryItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                child: SizedBox(
                  width: 250,
                  child: Image.network(
                    categoryItem.image,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  categoryItem.label,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CaseRow extends StatelessWidget {
  const CaseRow({
    Key? key,
    required this.listOfCategory,
    required this.a,
    required this.b,
  }) : super(key: key);

  final List<Category> listOfCategory;
  final int a;
  final int b;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CategoryCaseAlt(categoryItem: listOfCategory[a]),
          CategoryCaseAlt(categoryItem: listOfCategory[b]),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NavSearch extends StatelessWidget {
  const NavSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: TextField(
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
            suffixIcon: Container(
              margin: const EdgeInsets.only(right: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                )
              ),
              child: const Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.blueGrey,
              ),
            ),
            hintText: 'What are you Looking for ?',
            hintStyle: const TextStyle(
              fontSize: 20,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          ),
        ),
      ),
      Column(children: [
        Icon(
            Icons.shopping_bag_outlined,
          size: 150,
          color: Colors.black.withOpacity(0.7),
        ),
        Text(
            'Nothing Here at the Moment!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ],),
      SizedBox(height: bottomPadding,),
    ],
    );
  }
}

import 'package:flutter/material.dart';
import '../Providers/ProductProvider.dart';

class ProductCase extends StatelessWidget {
  final Product item;
  final int index;
  final int lenOfList;
  const ProductCase({Key? key, required this.item, required this.index,required this.lenOfList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: SizedBox(
                        width: 250,
                        child: Image.network(item.productImg,fit: BoxFit.fitWidth,alignment: Alignment.topCenter,),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    height: 250,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Center(
                        child: Text(
                          '${item.collection}  //  ${item.year}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Yanone Kaffeesatz'
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Container(
            height: 90,
            width: 250,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.brand,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),
                        ),
                        Text(
                          item.product,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              fontFamily: 'Yanone Kaffeesatz'
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${(index+1).toString()}/$lenOfList',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Yanone Kaffeesatz'
                      ),
                    ),
                  ],
                ),
                Text(
                  item.price,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Yanone Kaffeesatz'
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
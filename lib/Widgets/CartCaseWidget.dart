import 'package:flutter/material.dart';
import '../Providers/ProductProvider.dart';

class CartCase extends StatelessWidget {
  const CartCase({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 220,
              width: 350,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: SizedBox(
                        width: 130,
                        child: Image.network(
                          item.productImg,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 220,
                      margin: const EdgeInsets.only(top: 25,left: 15,right: 25,bottom: 25) ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.brand,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                item.collection,
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                item.product,
                                style: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              const Divider(),
                              Text(
                                '  ${item.price}',
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Yanone Kaffeesatz',
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const Divider(),
                            ],
                          ),
                          Row(
                            children: const [
                              FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Text(
                                  '  Qty:  1  /  ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'Yanone Kaffeesatz',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: CircleAvatar(backgroundColor: Color(0xFF16082F),radius: 8,)
                              ),
                              FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Text(
                                  '  /  L',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'Yanone Kaffeesatz',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
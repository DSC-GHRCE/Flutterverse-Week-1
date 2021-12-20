import 'package:flutter/material.dart';
import '../Widgets/CartCaseWidget.dart';
import '../Providers/ProductProvider.dart';

class NavCart extends StatelessWidget {
  const NavCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _btmPadding = MediaQuery.of(context).padding.bottom;
    ProductAccess prd = ProductAccess();
    List<Product> newArrivals = prd.listOfProducts.where((element) => element.year == '2021').toList();
    return Column(
      children: [
        const SizedBox(height: 10,),
        const Center(
          child: Text(
            'Cart',
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          flex: 5,
          child: SizedBox(
            width: _screenSize.width,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20,),
                CartCase(item: newArrivals[2],),
                CartCase(item: newArrivals[1],),
                const SizedBox(width: 20,),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomCenter,
              child: const Text(
                'Total Price :  Rs 30,990',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Yanone Kaffeesatz',
                    fontWeight: FontWeight.bold
                ),
              )
          ),
        ),
        SizedBox(
          height: 235,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                margin: const EdgeInsets.only(left: 25,right: 25,top: 10),
                child: Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: ListTile(
                      onTap: (){},
                      leading: Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: const CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          child: Icon(
                            Icons.attach_money,
                            size: 30,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Payment Method',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: const Text(
                        '\tCredit Card / Debit Card / Cash',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontFamily: 'Yanone Kaffeesatz',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
                child: const Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Proceed to Payment',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: _btmPadding,)
            ],
          ),
        ),
      ],
    );
  }
}


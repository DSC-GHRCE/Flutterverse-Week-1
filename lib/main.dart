import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              children: [
                Image.asset(
                  "assets/amazonLogo.png",
                  width: 100,
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.all(10),
                  // padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF2F2F2)),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    width: 200,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Search for something",
                          border: InputBorder.none),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search)
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const Text("Hot Deals"),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Show More >",
                            style: TextStyle(
                                color: Color(0xffFF9D0D),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    productList[index]["imagePath"]!,
                                    width: 100,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      productList[index]["name"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      productList[index]["price"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      productList[index]["companyName"]!,
                                    ),
                                    Spacer(),
                                    Text(
                                      productList[index]["deliveryTime"]!,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "Popular Categories",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      itemCount: listcategories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 55,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      child: Center(
                                        child: Image.asset(
                                          listcategories[index]["iconPath"]!,
                                          width: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      listcategories[index]["name"]!,
                                    ),
                                    Spacer(),
                                    Text(
                                      ">",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Color(0xffFF9D0D),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                color: const Color(0xffFF9D0D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 35,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
            ),
            const Spacer(),
            Container(
                margin: const EdgeInsets.only(left: 10),
                height: 70,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Rs 7654",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xffFF9D0D),
                      child: Text(
                        "3",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

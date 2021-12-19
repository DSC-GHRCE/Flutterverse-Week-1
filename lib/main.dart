import 'dart:ui';

import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutterverse_week1",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffFFF5EB),
            elevation: 0.0,
            title: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Spacer(),
                Text(
                  "Pizza",
                  style: TextStyle(
                      color: Color(0xff38465B),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "corner",
                  style: TextStyle(
                      color: Color(0xffD5A159),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ],
            )),
        body: Container(
          padding: EdgeInsets.all(10),
          height: 800,
          width: 500,
          color: Color(0xffFFF5EB),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xffFAEAD3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    Icon(Icons.format_align_right),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffFAEAD3),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: index == 0 ? 1 : 0,
                              color: index == 0
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              category[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 370,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pizzas.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 350,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color(0xffFAEAD3),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Center(
                                  child: CircleAvatar(
                                    radius: 70,
                                    backgroundImage:
                                        AssetImage("${pizzas[index]["img"]}"),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${pizzas[index]["name1"]}",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${pizzas[index]["name2"]}",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "With Cheese",
                                  style: TextStyle(
                                    color: Color(0xffBCB2A8),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${pizzas[index]["price"]}",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xffC7985f),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xff2C2E43),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Popular Pizza 🔥",
                    style: TextStyle(fontSize: 27),
                  ),
                  Spacer(),
                  Text(
                    "view all",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffBCB2A8),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          color: Color(0xffFFF5EB),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xffFAEAD3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xff2C2E43),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Color(0xffFFF5EB),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Color(0xffFFF5EB),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.auto_awesome_mosaic_rounded,
                  color: Color(0xffBCB2A8),
                  size: 35,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Color(0xffBCB2A8),
                  size: 35,
                ),
                Icon(
                  Icons.person,
                  color: Color(0xffBCB2A8),
                  size: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

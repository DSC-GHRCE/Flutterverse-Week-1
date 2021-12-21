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
      title: "flutterverse week1",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.border_all_rounded,
                size: 30,
                color: Colors.black,
              ),
              Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/sinchan.jpg"),
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(18),
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Furniture",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "in your home.",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.qr_code),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? Color(0xff122636)
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "${categories[index]}",
                              style: TextStyle(
                                fontSize: 15,
                                color: index == 0 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Top Chair",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 260,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chairs.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 200,
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    child: Image.asset(
                                      "${chairs[index]["img"]}",
                                      height: 150,
                                      width: 150,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${chairs[index]["name"]}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff122636),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Chair",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    Text(
                                      "${chairs[index]["price"]}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFCD97f),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Color(0xff122636),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Home",
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.article,
                    size: 40,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Article",
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.chat,
                    size: 40,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Chat",
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 40,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Profile",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

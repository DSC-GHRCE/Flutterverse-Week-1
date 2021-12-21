import 'package:flutter/material.dart';
import '../Screens/Account.dart';
import '../Screens/Cart.dart';
import '../Screens/Home.dart';
import '../Screens/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nuMetro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
            fontFamily: 'Yellowtail'
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageState = 0;
  List<Widget> navScreens = [
    const NavHome(),
    const NavSearch(),
    const NavAccount(),
    const NavCart(),
  ];
  void onTappedNavIcon(int index) {
    setState(() {
      _pageState = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: Image.asset('assets/logo.png',width: 150,),
        actions: [
          GestureDetector(
            onTap: (){},
            child: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 35,
                )
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.black,
                  size: 35,
                )
            ),
          ),
          const SizedBox(width: 20,)
        ],
        backgroundColor: Colors.grey[200],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: BottomNavigationBar(
            currentIndex: _pageState,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconTheme.of(context).copyWith(color: Colors.red,size: 35),
            unselectedIconTheme: IconTheme.of(context).copyWith(color: Colors.blueGrey,size: 30),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded),
                  label: 'Search'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_rounded),
                  label: 'cart'
              ),
          ],
            onTap: onTappedNavIcon,
          ),
        ),
      ),
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 375),
          child: navScreens[_pageState],
    ));
  }
}

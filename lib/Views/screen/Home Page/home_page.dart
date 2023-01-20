import 'package:ecommerce/Views/screen/Catagory/catagory_page.dart';
import 'package:ecommerce/Views/screen/Customer%20Home%20Page/customer_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _tabs = [
    CustomerHomePage(),
    CatagoryPage(),
    Center(
      child: Text("Shopping Page"),
    ),
    Center(
      child: Text("Card Page"),
    ),
    Center(
      child: Text("Profile Page"),
    ),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Catagory"),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout), label: "Card"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app_flutter/pages/cart_page.dart';
import 'package:shop_app_flutter/pages/product_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 0 ? const ProductList() : const CartPage(),
      // body: const IndexedStack(
      //   children: [
      //     ProductList(),
      //     CartPage(),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

import 'package:first_app/BottonScreen/about.dart';
import 'package:first_app/BottonScreen/cart.dart';
import 'package:first_app/BottonScreen/home.dart';
import 'package:first_app/BottonScreen/profile.dart';
import 'package:flutter/material.dart';

class dashbaordScreen extends StatefulWidget {
  const dashbaordScreen({Key? key}) : super(key: key);

  @override
  State<dashbaordScreen> createState() => _dashbaordScreenState();
}

class _dashbaordScreenState extends State<dashbaordScreen> {
  final PageController _pageController = PageController(initialPage: 1);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        children: const [
          homeScreen(),
          AboutUsScreen(),
          profileScreen(),
          cartScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: BottomNavigationBar(
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(seconds: 1), curve: Curves.bounceIn);
          },
          backgroundColor: const Color.fromARGB(255, 102, 206, 105),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 15,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 156, 4, 29),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'About Us'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined), label: 'Cart'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_task/features/cart/view/cart.dart';
import 'package:flutter_task/features/home/views/home.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const Cart(),
    const Center(child: Text('Setting')),
    const Center(child: Text('Profile'))
  ];
  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue,
        )),
        child: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onDestinationSelected,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            NavigationDestination(
                icon: Icon(Icons.settings), label: 'Settings'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

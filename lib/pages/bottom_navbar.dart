import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:build_food_delivery_app_with_flutter/pages/account_page_.dart';
import 'package:build_food_delivery_app_with_flutter/pages/favorite_page.dart';
import 'package:build_food_delivery_app_with_flutter/pages/home_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar>
    with WidgetsBindingObserver {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint('AppLifecycleState Changed to $state');
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void onItemtapped(int nweIndex) {
    setState(() {
      currentIndex = nweIndex;
    });
  }

  List<Widget> bodyWidgets = const [HomePage(), FavoritePage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    late final PreferredSizeWidget? appBar;
    if (Platform.isIOS) {
      appBar = CupertinoNavigationBar(middle: Text('Foodak'));
    } else {
      appBar = AppBar(title: Center(child: Text('Foodak')));
    }
    return Scaffold(
      appBar: appBar,
      drawer: const Drawer(child: Center(child: Text('Drawer Menu'))),
      body: SafeArea(child: bodyWidgets[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: currentIndex,

        onTap: onItemtapped,
      ),
    );
  }
}

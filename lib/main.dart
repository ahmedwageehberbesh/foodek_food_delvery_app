import 'package:build_food_delivery_app_with_flutter/pages/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:build_food_delivery_app_with_flutter/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak _ Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        colorScheme: .fromSeed(seedColor: Colors.deepOrange),
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        dividerTheme: DividerThemeData(thickness: 3, indent: 8, endIndent: 8),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.deepOrange,
          textColor: Colors.black,
        ),

        fontFamily: 'OpenSans',
        useMaterial3: false,
      ),
      home: BottomNavbar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/providers/cart_provider.dart';
import 'package:shop_app_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
//Provider
//ChangeNotifierProvider

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      // create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                // fontWeight: FontWeight.bold,
              ),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromRGBO(254, 206, 1, 1),
                primary: const Color.fromRGBO(254, 206, 1, 1)),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: const TextTheme(
              titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            useMaterial3: true),
        home: const MyHomePage(
            // product: products[0],
            ),
      ),
    );
  }
}

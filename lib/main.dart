import 'package:flutter/material.dart';
import 'package:flutter_app/accueilPage.dart';
import 'package:flutter_app/Account/loginPage.dart';
import 'package:flutter_app/Account/singupPage.dart';
import 'package:flutter_app/bottom_bar.dart';

//Les annotations Lambda de DART (pour les méthodes qui n'ont qu'une seule requête)
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),

      routes: {
        "/": (context) => accueilPage(title: 'WEB APP - Counting'),
        "/singin": (context) => loginPage(),
        "/singup": (context) => singupPage(),
        "/store": (context) => BottomBarPage(),
      },

      initialRoute: "/",
    );
  }
}

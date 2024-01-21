import 'package:flutter/material.dart';
import 'package:flutter_app/accueilPage.dart';
import 'package:flutter_app/loginPage.dart';
import 'package:flutter_app/profilePage.dart';
import 'package:flutter_app/singupPage.dart';

//Les annotations Lambda de DART (pour les méthodes qui n'ont qu'une seule requête)
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        "/profile": (context) => ProfilePage(),
      },

      initialRoute: "/",
    );
  }
}

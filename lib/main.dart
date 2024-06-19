import 'package:flutter/material.dart';
import './pages/home.dart';
import "./pages/login.dart";

void main() {
  runApp(Pasx());
}

class Pasx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}

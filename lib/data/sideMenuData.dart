import 'package:flutter/material.dart';
import 'package:pasx/models/menuModel.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home, title: "Home"),
    MenuModel(icon: Icons.login, title: "Login"),
    MenuModel(icon: Icons.login, title: "Exercise")
  ];
}

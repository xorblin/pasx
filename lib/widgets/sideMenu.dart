import 'package:flutter/material.dart';
import 'package:pasx/data/sideMenuData.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

final sideMenuData = SideMenuData();

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sideMenuData.menu.length,
      itemBuilder: (context, index) => buildMenu(sideMenuData, index),
    );
  }

  Widget buildMenu(SideMenuData menuData, int index) {
    final isSelected = index == selectedIndex;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.blue.withOpacity(0.2),
              // borderRadius: BorderRadius.circular(20),
            )
          : null,
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Icon(
              menuData.menu[index].icon,
              color: isSelected ? Colors.blue : Colors.black,
            ),
            Text(menuData.menu[index].title)
          ],
        ),
      ),
    );
  }
}

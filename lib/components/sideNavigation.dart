import "package:flutter/material.dart";

class PasxDrwaer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Home"),
          onTap: () {
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          title: const Text("Login"),
          onTap: () {
            Navigator.pushNamed(context, "/login");
          },
        ),
      ],
    );
  }
}

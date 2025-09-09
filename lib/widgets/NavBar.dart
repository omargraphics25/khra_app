import "package:flutter/material.dart";
import "package:omar/Data/notiver.dart";

// ignore: must_be_immutable
class Navbar extends StatelessWidget {
  Navbar({super.key});
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotiver,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotiver.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}

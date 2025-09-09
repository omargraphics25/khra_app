import 'package:flutter/material.dart';
import 'package:omar/Data/notiver.dart';
import 'package:omar/views/pages/HomePage.dart';
import 'package:omar/views/pages/profile.dart';
import 'package:omar/widgets/NavBar.dart';

List<Widget> pages = [Homepage(), Profile()];

class Widgettree extends StatelessWidget {
  const Widgettree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotiver,
        builder: (context, slectedpage, child) {
          return pages.elementAt(slectedpage);
        },
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, isDarkMode, child) {
                return isDarkMode
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode);
              },
            ),
          ),
        ],
        title: Text('Khra App'),
        centerTitle: true,
      ),
    );
  }
}

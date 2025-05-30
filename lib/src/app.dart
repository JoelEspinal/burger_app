import 'package:flutter/material.dart';

import 'pages.dart/detail_page.dart';
import 'pages.dart/menu_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TASTYBURGER',
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
          ),
        ),
      ),
      routes: {
        '/': (context) => MenuPage(),
        '/details': (context) => DetailPage()
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'pages.dart/detail_page.dart';
import 'pages.dart/menu_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BURGER APP',
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
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

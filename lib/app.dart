import 'package:flutter/material.dart';
import 'package:logisticsapp/theme/theme.dart';

import 'package:logisticsapp/ui/widgets/my_bottom_navigation_bar.dart';

void main() {
  runApp(const ParcelApp());
}

class ParcelApp extends StatelessWidget {
  const ParcelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme section
      themeMode: ThemeMode.system,
      theme: KThemeData.lightTheme,
      darkTheme: KThemeData.darkTheme,
      //routes section
      home: const MyBottomNavigationBar(),
    );
  }
}

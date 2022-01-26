import 'package:flutter/material.dart';

import './pages/settings_screen.dart';
import './widgets/tab_bar.dart';
import './pages/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals",
      home: Tabbar(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(fontFamily: "Raleway",fontSize: 20,fontWeight: 
          FontWeight.bold)
        )
      ),
      routes: {
        "/category-meals" : (_)=>CategoryMealsScreen(),
        "/settings": (_)=>SettingsScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';

import './drawer.dart';
import '../pages/favourites_screen.dart';
import '../pages/categories_screen.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        drawer: DrawerStyle(),
        appBar: AppBar(
          title: selectedIndex==0?Text("Meals"):Text("Favourites"),
          bottom: TabBar(
            onTap: (index){
              setState(() {
                selectedIndex=index;
              });
              
            },
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: "Categories",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favourites",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavouritesScreen(),
        ]),
      ),
      length: 2,
    );
  }
}

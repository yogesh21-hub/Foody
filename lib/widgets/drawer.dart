import 'package:flutter/material.dart';

class DrawerStyle extends StatelessWidget {
  void showpage(String page,BuildContext ctx)
  {
    Navigator.of(ctx).pushReplacementNamed(page);
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          height: 150,
          width: double.infinity,
          child: Text(
            "Let's Cook",
            style: TextStyle(
              fontSize: 26,
              fontFamily: "Raleway",
            ),
          ),
          alignment: Alignment.center,
        ),
        ListTile(
          leading: Icon(Icons.restaurant),
          title: Text(
            "Categories",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Raleway",
            ),
          ),
          onTap: ()=>showpage("/",context),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "Settings",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Raleway",
            ),
          ),
          onTap: ()=>showpage("/settings",context),
        )
      ],
    ));
  }
}

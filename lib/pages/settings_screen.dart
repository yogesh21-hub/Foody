import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegetarian=false;
  var _vegan=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerStyle(),
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Adjust your meal selection.",
                style: Theme.of(context).textTheme.title,
              ),
              padding: EdgeInsets.all(20),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SwitchListTile(
                    value: _glutenFree,
                    onChanged: (value) {
                      setState(() {
                        _glutenFree=value;
                      });
                    },
                    title: Text("Gluten-Free"),
                    subtitle: Text("Only include gluten-free meals."),
                  ),
                  SwitchListTile(
                    value: _lactoseFree,
                    onChanged: (value) {
                      setState(() {
                        _lactoseFree=value;
                      });
                    },
                    title: Text("Lactose-Free"),
                    subtitle: Text("Only include lactose-free meals."),
                  ),
                  SwitchListTile(
                    value: _vegetarian,
                    onChanged: (value) {
                      setState(() {
                        _vegetarian=value;
                      });
                    },
                    title: Text("Vegetarian"),
                    subtitle: Text("Only include vegetarian meals."),
                  ),
                  SwitchListTile(
                    value: _vegan,
                    onChanged: (value) {
                      setState(() {
                        _vegan=value;
                      });
                    },
                    title: Text("Vegan"),
                    subtitle: Text("Only include vegan meals."),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

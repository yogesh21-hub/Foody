import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {this.imageUrl,
      this.duration,
      this.title,
      this.affordability,
      this.complexity});

  void showMealRecipe() {}
  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 6,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
      onTap: showMealRecipe,
      splashColor: Theme.of(context).primaryColor,
      child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 220,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: "Raleway"),
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                                  child: Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text("$duration min")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                                  child: Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(width: 6,),
                      Text("$complexity".substring(11))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                                  child: Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      Text("$affordability".substring(14))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';

import '../models/meal.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  
  @override
  Widget build(BuildContext context) {
    final routeargs= ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final title = routeargs["title"];

    final id = routeargs["id"];

    final List<Meal> meals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              affordability: meals[index].affordability,
              imageUrl: meals[index].imageUrl,
              title: meals[index].title,
              complexity: meals[index].complexity,
              duration: meals[index].duration,
            );
          },
          itemCount: meals.length,
        ));
  }
}

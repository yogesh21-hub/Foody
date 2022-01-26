import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final title;
  final id;
  final Color color;
  CategoryItem(this.id,this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed("/category-meals",arguments: {"title":title,"id":id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(20),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [color.withOpacity(0.5), color],
                begin: Alignment.center,
                end: Alignment.topCenter)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Recipe"),
      ),
      body: Center(
        child: Text("The Recipes for the Category"),
      ),
    );
  }
}
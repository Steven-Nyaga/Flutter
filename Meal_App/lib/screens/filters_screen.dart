import 'package:Meal_App/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static const routName = '/filters-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('MAde it'),
      ),
    );
  }
}

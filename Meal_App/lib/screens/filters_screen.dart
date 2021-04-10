import 'package:Meal_App/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routName = '/filters-screen';

  final Function saveFilters;
  final Map<String, bool> status;

  FiltersScreen(this.saveFilters, this.status);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  initState() {
    _glutenFree = widget.status['gluten'];
    _vegetarian = widget.status['vegetarian'];
    _vegan = widget.status['vegan'];
    _lactoseFree = widget.status['lactos'];
    super.initState();
  }

  Widget _buildSwitch(
    String title,
    String subTitle,
    bool onOff,
    Function update,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: onOff,
      onChanged: update,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'vegetarian': _vegetarian,
                'vegan': _vegan,
                'lactos': _lactoseFree,
              };
              widget.saveFilters(selectedFilters);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitch(
                  'Gluten-Free',
                  'Only view gluten-free meals.',
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                _buildSwitch(
                  'Vegetarian',
                  'Only view Vegetarian meals.',
                  _vegetarian,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
                _buildSwitch(
                  'Vegan',
                  'Only view Vegan meals.',
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                _buildSwitch(
                  'Lactos-Free',
                  'Only view lactos-free meals.',
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

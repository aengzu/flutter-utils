import 'package:flutter/material.dart';


import '../model/city.dart';


class ListViewExample extends StatelessWidget {
  final List<City> _allCities = City.allCities();

  ListViewExample() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Cites around world",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allCities.length,
      itemBuilder: _getItemUI,
      padding: EdgeInsets.all(0.0),
    );
  }

  // First Task
/* Widget _getItemUI(BuildContext context, int index) {
   return new Text(_allCities[index].name);
 }*/

  Widget _getItemUI(BuildContext context, int index) {
    return Card(

        child: Column(

          children: <Widget>[
            ListTile(
              leading: Image.asset(
                "assets/images/" + _allCities[index].image!,
                fit: BoxFit.cover,
                width: 100.0,
              ),

              title: Text(
                _allCities[index].name!,
                style:TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     Text(_allCities[index].country!,
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    Text('Population: ${_allCities[index].population}',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),

              onTap: () {
                _showSnackBar(context, _allCities[index]);
              },
            )
          ],
        ));
  }

  _showSnackBar(BuildContext context, City item) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("${item.name} is a city in ${item.country}"),
      backgroundColor: Colors.amber,
    );

    ScaffoldMessenger.of(context).showSnackBar;
  }
}
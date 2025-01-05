import 'package:flutter/material.dart';
import 'api_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double minPrice = 0;
  double maxPrice = 100000;
  List<dynamic> cars = [];

  void fetchCars() async {
    try {
      final results = await ApiService.fetchCars(minPrice, maxPrice);
      setState(() {
        cars = results;
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Search App")),
      body: Column(
        children: [
          RangeSlider(
            values: RangeValues(minPrice, maxPrice),
            min: 0,
            max: 100000,
            divisions: 100,
            labels:
                RangeLabels("\$${minPrice.toInt()}", "\$${maxPrice.toInt()}"),
            onChanged: (RangeValues values) {
              setState(() {
                minPrice = values.start;
                maxPrice = values.end;
              });
            },
          ),
          ElevatedButton(
            onPressed: fetchCars,
            child: Text("Search"),
          ),
          Expanded(
            child: cars.isEmpty
                ? Center(child: Text("No cars found"))
                : ListView.builder(
                    itemCount: cars.length,
                    itemBuilder: (context, index) {
                      final car = cars[index];
                      return ListTile(
                        title: Text(car['name']),
                        subtitle: Text("\$${car['price']}"),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

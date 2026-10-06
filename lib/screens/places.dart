import 'package:favourite_place_app/screens/add_places.dart';
import 'package:favourite_place_app/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Favourite Place'),
        actions: [IconButton(
          icon: Icon(Icons.add), 
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>
            const AddPlacesScreen()));
          })],
      ),
      body: PlacesList(
        places: []
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/great_places.dart';
import './screens/places_list_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.amber,
        ),
        home: const PlacesListScreen(),
      ),
    );
  }
}

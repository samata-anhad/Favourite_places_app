import 'package:flutter_riverpod/legacy.dart';
import 'package:favourite_place_app/models/place_model.dart';

class UserPlacesNotifyer extends StateNotifier<List<Place>> {
  UserPlacesNotifyer() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider(
  (ref) => UserPlacesNotifyer(),
  );

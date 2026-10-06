import 'package:uuid/uuid.dart';

const uuid = Uuid();

//uuid.v4() for random id generate

class Place {
  Place({required this.title}) : id = uuid.v4();

  final String id;
  final String title;
}

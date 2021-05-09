import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String imageUrl;
  final String mees;
  final String time;

  User({@required this.name, @required this.imageUrl, this.mees, this.time});
}

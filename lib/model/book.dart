import 'package:travel/model/place.dart';
import 'package:travel/model/transport.dart';

class Book{
  final Place place;
  final Transport transport;
  final String date;

  Book({this.place, this.transport, this.date});
}
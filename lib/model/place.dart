import 'package:travel/model/transport.dart';

class Place{
  final String name;
  final String imageUrl;
  final List<Transport> transport;

  Place({this.name, this.imageUrl, this.transport});
}
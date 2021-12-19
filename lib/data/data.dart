import 'package:travel/model/book.dart';
import 'package:travel/model/place.dart';
import 'package:travel/model/transport.dart';

/*
a= bus,
b= flight
c= ship
*/

final a1 = Transport(price: 12, vname: 'Bus');

final a2 = Transport(vname: 'Deluxe Bus', price: 15);

final b1 = Transport(vname: 'Etihad airlines', price: 200);

final b2 = Transport(vname: 'Lufthansa', price: 500);

final c1 = Transport(vname: 'Ship1', price: 300);

final c2 = Transport(vname: 'Ship2', price: 600);

final paris = Place(
    name: 'Paris',
    imageUrl:
    'assets/images/paris.jpg',
    transport: [a1, b1, c1, a2]);

final uk = Place(
    name: 'London',
    imageUrl:
        'assets/images/london.jpg',

    transport: [a1,a2, b1,b2, c1,c2 ]);

final spain = Place(
    name: 'Madrid',
    imageUrl:
            'assets/images/madrid.jpg',

    transport: [a1,a2, b1, c1, c2]);


final nepal = Place(
    name: 'Kathmandu',
    imageUrl:
    'assets/images/nepal.jpg',

    transport: [b1,b2]);

    final italy = Place(
    name: 'Rome',
    imageUrl:
    'assets/images/rome.jpg',

    transport: [a1, b1, c1, a2]);

        final indo = Place(
    name: 'Bali',
    imageUrl:    'assets/images/bali.jpg',

    transport: [a1, b1, c1, a2]);

    final List<Place> places = [
      paris,
      uk,
      spain,
      nepal,
      italy,
      indo
    ];


    List<Book> booking = [
      Book(
        place: uk,
        transport: b2,
        date: 'Nov 3,2020'
      ),
            Book(
        place: nepal,
        transport: b1,
        date: 'Nov 3,2020'
      ),
            Book(
        place: indo,
        transport: c2,
        date: 'Nov 3,2020'
      ),
            Book(
        place: spain,
        transport: a2,
        date: 'Nov 3,2020'
      ),
    ];
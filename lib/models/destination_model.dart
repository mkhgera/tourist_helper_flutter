import 'package:kaz_travel_appp/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/Astana.jpg',
    name: 'Байтерек',
    type: 'Достопримечательность',
    startTimes: ['9:00', '18:00'],
    rating: 5,
    price: 2000,
  ),
  Activity(
    imageUrl: 'assets/images/Almaty.jpg',
    name: 'БАО',
    type: 'Природная зона',
    startTimes: ['8:00', '3:00'],
    rating: 4,
    price: 3000,
  ),
  Activity(
    imageUrl: 'assets/images/Green.jpg',
    name: 'Green Park',
    type: 'Зона отдыха',
    startTimes: ['8:00', '2:00'],
    rating: 3,
    price: 2000,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/Astana.jpg',
    city: 'Нур-султан',
    country: 'Акмолинская область',
    description: 'Посмотреть достопримечательности столицы.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Almaty.jpg',
    city: 'Алмата',
    country: 'Алматинская область',
    description: 'Посмотреть достопремечательности южной столицы.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Petro.jfif',
    city: 'Петропавл',
    country: 'СКО',
    description: 'Посмотреть достопримечательности северной столицы.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Shym.jpg',
    city: 'Шымкент',
    country: 'ЮКО',
    description: 'Посмотреть достопримечательности южной столицы.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Atyrau.jpg',
    city: 'Атырау',
    country: 'Атырауская область',
    description: 'Посмотреть достопримечательности западной столицы.',
    activities: activities,
  ),
];

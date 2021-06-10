import 'package:kaz_travel_appp/models/destination_model.dart';

class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;
  String destination;

  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
    this.destination,
  });
}

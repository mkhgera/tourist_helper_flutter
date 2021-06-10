import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseManager {
  final CollectionReference activity =
      FirebaseFirestore.instance.collection('places');

  Future<void> createActivity(String address, String category, String city,
      String imageUrl, String title, String uid) async {
    return await activity.doc(uid).set({
      'address': address,
      'category': category,
      'city': city,
      'title': imageUrl,
      'rating': title,
    });
  }

  Future getActivityList() async {
    List itemsList = [];
    try {
      await activity.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future getCityActivityList(String city, String cityName) async {
    List itemsList = [];
    try {
      await activity.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// destinationsList model
  final CollectionReference destinationsList =
      FirebaseFirestore.instance.collection('cities');

  Future<void> createDestination(
      String city, String desctiption, String uid) async {
    return await destinationsList.doc(uid).set({
      'city': city,
      'desctiption': desctiption,
    });
  }

  Future getDestinationList() async {
    List itemsList = [];

    try {
      await destinationsList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //favorites model
  final CollectionReference favorites =
      FirebaseFirestore.instance.collection('favorites');

  Future<void> createFavorite(String email, String placeId) async {
    return await favorites.add({
      'email': email,
      'placeId': placeId,
    });
  }

  Future getFavoritesList() async {
    List itemsList = [];
    try {
      await favorites.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

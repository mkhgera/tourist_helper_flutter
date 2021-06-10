class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/RixosA.jpg',
    name: 'Rixos Astana',
    address: 'Nazarbayev 777',
    price: 40000,
  ),
  Hotel(
    imageUrl: 'assets/images/HiltonA.jpg',
    name: 'Hilton Astana',
    address: 'Expo sayran 12',
    price: 10000,
  ),
  Hotel(
    imageUrl: 'assets/images/RixosMata.webp',
    name: 'Rixos Almaty',
    address: 'Nazarbayev 666',
    price: 30000,
  ),
];

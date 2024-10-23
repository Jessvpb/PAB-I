class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Pantai Hawai',
    location: 'Hawai',
    description: 'Pemandangan sunset yg bagus',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'USD2000',
  ),
];

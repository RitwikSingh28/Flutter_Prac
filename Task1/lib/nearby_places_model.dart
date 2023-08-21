//ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyPlaceModel {
  final String image;
  final String location;
  NearbyPlaceModel({
    required this.image,
    required this.location,
  });
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
    image: "images/city6.jpg",
    location: "Buckingham Palace",
  ),
  NearbyPlaceModel(
    image: "images/city5.jpg",
    location: "Tower of London",
  ),
  NearbyPlaceModel(
    image: "images/city4.jpg",
    location: "Big Ben",
  ),
  NearbyPlaceModel(
    image: "images/city3.jpg",
    location: "Big Ben",
  ),
  NearbyPlaceModel(
    image: "images/city2.jpg",
    location: "regis Beach",
  ),
  NearbyPlaceModel(
    image: "images/city1.jpg",
    location: "regis Beach",
  ),
];

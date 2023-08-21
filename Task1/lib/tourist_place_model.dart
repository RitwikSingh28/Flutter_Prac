//ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Mountain", image: "images/city1.jpg"),
  TouristPlacesModel(name: "City", image: "images/city2.jpg"),
  TouristPlacesModel(name: "Waterfall", image: "images/city3.jpg"),
  TouristPlacesModel(name: "River", image: "images/city4.jpg"),
  TouristPlacesModel(name: "Beaches", image: "images/city5.jpg"),
];

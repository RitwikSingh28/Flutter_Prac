import 'dart:core';

class Item{
  final String url;
  final String title;
  final String location;
  final String cost;
  final String desc;
  final double rating;
  final List<String> preview;

  Item({required this.preview,required this.url,required this.location,required this.desc,required this.cost,required this.title,required this.rating});

}
List<Item> items= [
  Item(url: 'https://volcano.si.edu/gallery/photos/GVP-12125.jpg',
      preview:['https://images.unsplash.com/photo-1501786223405-6d024d7c3b8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmltamFuaSUyMG1vdW50YWlufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60https://images.unsplash.com/photo-1501786223405-6d024d7c3b8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmltamFuaSUyMG1vdW50YWlufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        'https://www.laughtraveleat.com/wp-content/uploads/2023/01/view-summit-mount-rinjani-trek-lombok-indonesia-laugh-travel-eat-2.jpg',
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/3c/20/40.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/KAGAGAHAN_RIJANI.jpg/250px-KAGAGAHAN_RIJANI.jpg',
        'https://images.unsplash.com/photo-1478059299873-f047d8c5fe1a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmltamFuaSUyMG1vdW50YWlufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        ],
location: 'Lombok,Indonesia',rating: 4.8,desc:"The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia. ",cost: "\$48",title: "Rimjhani Mountain"),
 Item(url: 'https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/java/east-java/bromo-tengger-semeru-national-park/point-of-interest/mount-bromo/13ac754b7fc7cdf2094fe85a1d82bcba9bfcedbd-4743e.jpg',
      preview: ['https://images.unsplash.com/photo-1567347397177-7f0083398378?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YnJvbW8lMjBtb3VudGFpbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1567346978752-0ac66b869219?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1378&q=80',
      'https://images.unsplash.com/photo-1676447183305-e6865a604679?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fGJyb21vJTIwbW91bnRhaW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'https://plus.unsplash.com/premium_photo-1670260849875-bd8b9d9dce94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBJpi30ncJlXrTzOngSJfq5oB-xYJPTAZ8t3CN_6i_ELJSm749tdcmu3c8uY-0z0VGX_g&usqp=CAU'],location:'East Java ,Indonesia', rating: 4.2,desc: "At 2,392 meters tall, Mt Bromo is not among the tallest of Indonesia's mountains but its stunning beauty lies in its incredible setting. From a vantage point on Mount Penanjakan (2,770 meters above sea level), 2.5 hours from Malang. visitors from around the world come to see the sunrise over Mt Bromo.", cost: "\$36", title: "Bromo Moutain"),


];



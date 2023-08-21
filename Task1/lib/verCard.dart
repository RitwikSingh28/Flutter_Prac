import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  final List<String> image = [
    'https://cdn.wallpapersafari.com/6/19/ECj01F.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/1/1a/Ulun_Temple_on_Lake_Bratan_%287609679414%29.jpg',
    'https://cdn.mos.cms.futurecdn.net/Y4VAT3JQ9UgpLmEBqosALH.jpg'
  ];
  final List<String> titles = ['Pink Beach', 'Meru Tower', 'Toroja Land'];
  final List<String> subtitles = [
    'This exceptional beach gets its striking color from microscopic animals ',
    'A Meru tower or pellingih Maru is the principal shrine of a Balinese temple ',
    'Toroja Island is a beautiful island in Indonesia'
  ];
  final List<String> cost = ["\$48/person", '\$36/Person', '\$ 40/person'];
  final List<String> location = [
    "Komodo Island,Indonesia",
    "Bali, Indonesia",
    "South Solawesi, Indonesia"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.5,
            child: Row(
              children: [
                Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: Image.network(image[index], fit: BoxFit.cover),
                        ))
                    /*hild: InkWell(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>MoutainPage(
            ),
          ),),
          ),*/
                    ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      titles[index],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.blue,
                      ),
                      Text(
                        location[index],
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitles[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(cost[index],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ))
              ],
            ),
          );
        },
        separatorBuilder: (context, _) => SizedBox(
              height: 12,
            ),
        itemCount: image.length);
  }
}

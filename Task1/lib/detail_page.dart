import 'package:flutter/material.dart';
import 'package:tourism_ui/places_page.dart';

class DetailPage extends StatefulWidget {
  final Map place;
  final bool isHor;
  const DetailPage({
    Key? key,
    required this.place,
    this.isHor = false,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  IconData icon = Icons.favorite_border;
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: Stack(
              // fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(widget.isHor
                              ? widget.place['horimg']
                              : widget.place['img']),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (active) {
                              icon = Icons.favorite_rounded;
                              active = false;
                            } else {
                              icon = Icons.favorite_border;
                              active = true;
                            }
                          });
                        },
                        icon: Icon(
                          icon,
                          color: Colors.red,
                        )),
                  ),
                )
              ],
            ),
          ),
          Card(
            surfaceTintColor: Colors.white,
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              height: 480,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    widget.isHor
                        ? widget.place['horname']
                        : widget.place['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 17,
                        weight: 10,
                      ),
                      Text(
                        widget.isHor
                            ? widget.place['horlocation']
                            : widget.place['location'],
                        style: const TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  trailing: Text(
                    widget.place['price'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    widget.place['details'],
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Preview',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Expanded(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )
                      ],
                    )),
                    Text(
                      widget.place['rating'],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: places.length,
                    itemBuilder: (context, index) {
                      Map plc = places[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 15,
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(plc['preimg']))),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    ));
  }
}

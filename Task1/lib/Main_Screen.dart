// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_ui/vertical_widgets.dart';
import 'package:tourism_ui/horizontal_widgets.dart';
import 'package:tourism_ui/places_page.dart';
import 'package:tourism_ui/touriest_place.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map place = places[0];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CupertinoTabBar(
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                Icons.favorite,
              )),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
              ),
            ]),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 241, 241),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            color: const Color.fromARGB(255, 97, 95, 95),
                            'assets/images/menu_icon.png',
                          ))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      ElevatedButton.icon(
                          style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(0),
                              iconColor: MaterialStatePropertyAll(Colors.blue)),
                          onPressed: () {},
                          icon: const Icon(Icons.location_on),
                          label: const Text(
                            'Agra,India',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cartoon.jpg'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Catagory',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  )),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Colors.blue,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TourPlaces(),
              const SizedBox(
                height: 20,
              ),
              const HorizontalCard(),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Destination',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  )),
                  Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Color.fromARGB(255, 22, 22, 22),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const VerticalCard(),
            ]),
          ),
        ),
      ),
    );
  }
}

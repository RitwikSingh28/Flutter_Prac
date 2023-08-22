import 'package:flutter/material.dart';
import 'package:task_1/detailsecond.dart';
import 'package:task_1/home.dart';
import 'package:task_1/utils/routes.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(0, 237, 220, 220),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/icon2.png",
                width: 36,
                height: 36,
              ),
              // SizedBox(
              //   width: 60,
              // ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Current Location",
                      style: TextStyle(color: Color(0xff8D94A2), fontSize: 15),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        Text(
                          "Denpasar,Bali",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   width: 30,
              // ),
              Image.asset(
                "assets/images/icon1.png",
                width: 36,
                height: 36,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          selectedIconTheme: IconThemeData(color: Colors.blue, size: 35),
          // selectedItemColor: Colors.blue,jhjhjhj
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
              backgroundColor: Color.fromARGB(153, 131, 130, 130),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: '',
              backgroundColor: Color.fromARGB(153, 131, 130, 130),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: '',
              backgroundColor: Color.fromARGB(153, 131, 130, 130),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: '',
              backgroundColor: Color.fromARGB(153, 131, 130, 130),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 10),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 158,
                      ),
                      Text("View all"),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/mountain.png",
                        width: 113,
                        height: 48,
                      ),
                      Image.asset(
                        "assets/images/waterfall.png",
                        width: 113,
                        height: 48,
                      ),
                      Image.asset(
                        "assets/images/river.png",
                        width: 113,
                        height: 48,
                      ),
                      Image.asset(
                        "assets/images/mountain.png",
                        width: 113,
                        height: 48,
                      ),
                    ],
                  ),
                ),
                Container(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 222,
                        height: 143,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.secondRoute);
                          },
                          child: Image.asset(
                            "assets/images/rinjani.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        width: 222,
                        height: 143,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.secondRoute);
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/brmo.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 30),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Popular Destination",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 78,
                      ),
                      Text("View all"),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Container(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.secondRoute);
                        },
                        child: Container(
                          width: 324,
                          height: 109,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/im1.png",
                                width: 95,
                                height: 84.55,
                              ),
                              Container(
                                width: 192,
                                height: 82,
                                child: Align(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "The Pink Beach",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Container(
                                        // width: 133,
                                        height: 12,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.blue,
                                              size: 11,
                                            ),
                                            Text(
                                              "Komodo Island, Indonesia",
                                              style: TextStyle(
                                                color: Color(0xff1C9FE2),
                                                fontSize: 10,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          // width: 192,
                                          height: 20,
                                          child: Text(
                                            "This exceptional beach gets its striking color from microscopic animals called...",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 6),
                                          )),
                                      Container(
                                        // width: 61,
                                        height: 15,
                                        child: Row(
                                          children: [
                                            Text(
                                              "\$48",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text("/Person",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xff8D94A2),
                                                )),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                // child:
                                //     Image.asset("assets/images/pinkbeach.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.secondRoute);
                        },
                        child: Container(
                          width: 324,
                          height: 109,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/meruimg.png",
                                  width: 94,
                                  height: 84.55,
                                ),
                                Container(
                                  width: 192,
                                  height: 82,
                                  child: Align(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Meru Tower",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          // width: 133,
                                          height: 12,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.blue,
                                                size: 11,
                                              ),
                                              Text(
                                                "Bali, Indonesia",
                                                style: TextStyle(
                                                  color: Color(0xff1C9FE2),
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            // width: 192,
                                            height: 20,
                                            child: Text(
                                              "A Meru tower or pelinggih meru is the principal shrine of a Balinese temple. It is a wooden..",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 6),
                                            )),
                                        Container(
                                          // width: 61,
                                          height: 15,
                                          child: Row(
                                            children: [
                                              Text(
                                                "\$36",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("/Person",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xff8D94A2),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // child:
                                  //     Image.asset("assets/images/pinkbeach.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.secondRoute);
                        },
                        child: Container(
                          width: 324,
                          height: 109,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/trojaimg.png",
                                  width: 94,
                                  height: 84.55,
                                ),
                                Container(
                                  width: 192,
                                  height: 82,
                                  child: Align(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Toraja Land",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          // width: 133,
                                          height: 12,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.blue,
                                                size: 11,
                                              ),
                                              Text(
                                                "South Sulawesi, Indonesia",
                                                style: TextStyle(
                                                  color: Color(0xff1C9FE2),
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            // width: 192,
                                            height: 20,
                                            child: Text(
                                              "Toraja land is one the tourist destination area in indonesia that must be visited because it..",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 6),
                                            )),
                                        Container(
                                          // width: 61,
                                          height: 15,
                                          child: Row(
                                            children: [
                                              Text(
                                                "\$47",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("/Person",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xff8D94A2),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // child:
                                  //     Image.asset("assets/images/pinkbeach.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.secondRoute);
                        },
                        child: Container(
                          width: 324,
                          height: 109,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/yogak.png",
                                  width: 94,
                                  height: 84.55,
                                ),
                                Container(
                                  width: 192,
                                  height: 82,
                                  child: Align(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Yogakarta",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          // width: 133,
                                          height: 12,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.blue,
                                                size: 11,
                                              ),
                                              Text(
                                                "Central Java, Indonesia",
                                                style: TextStyle(
                                                  color: Color(0xff1C9FE2),
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            // width: 192,
                                            height: 20,
                                            child: Text(
                                              "Yogyakarta, or Jogja for short, is a cultural and historical hub in central Java, Indonesia. ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 6),
                                            )),
                                        Container(
                                          // width: 61,
                                          height: 15,
                                          child: Row(
                                            children: [
                                              Text(
                                                "\$54",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("/Person",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xff8D94A2),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // child:
                                  //     Image.asset("assets/images/pinkbeach.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      // Container(height:30),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

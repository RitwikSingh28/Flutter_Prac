import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task1/utils/routes.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(248, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 35,
              height: 35,
              child: Image.asset(
                'Assets/images/drawer.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 75),
            Column(
              children: [
                Text(
                  "Current Location",
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 13,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Colors.lightBlue,
                      size: 15,
                    ),
                    Text(
                      "Denpasar, Bali",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(width: 71),
            Image.asset('Assets/images/profile.jpg')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Category",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 165),
                Text("View all",
                    style: TextStyle(fontSize: 15, color: Colors.blue)),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Color.fromARGB(255, 58, 163, 249),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Myroutes.detailRoute);
                    },
                    child: Container(
                      height: 38,
                      width: 103,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(0, 246, 248, 250),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'Assets/images/mountain.jpg',
                            alignment: Alignment.centerLeft,
                          ),
                          Text(
                            "Mountain",
                            style: TextStyle(
                                color: const Color.fromARGB(173, 0, 0, 0)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 38,
                    width: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(0, 246, 248, 250),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'Assets/images/waterfall.jpg',
                          alignment: Alignment.centerLeft,
                        ),
                        Text(
                          "Waterfall",
                          style: TextStyle(
                              color: const Color.fromARGB(173, 0, 0, 0)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(0, 246, 248, 250),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'Assets/images/river.jpg',
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.fitHeight,
                        ),
                        Text(
                          "River",
                          style: TextStyle(
                              color: const Color.fromARGB(173, 0, 0, 0),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 28,
                    width: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(0, 246, 248, 250),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'Assets/images/dessert.jpg',
                          alignment: Alignment.centerLeft,
                        ),
                        Text(
                          "Dessert",
                          style: TextStyle(
                              color: const Color.fromARGB(173, 0, 0, 0)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Myroutes.detailRoute);
                        },
                        child: Container(
                          height: 156,
                          width: 235,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13)),
                          child: Image.asset('Assets/images/look1.png'),
                        ),
                      ),
                      Positioned(
                          bottom: 28,
                          left: 14,
                          child: Text(
                            "Rinjani Mountain",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                      Positioned(
                          bottom: 13,
                          left: 14,
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Colors.white,
                            size: 10,
                          )),
                      Positioned(
                          bottom: 13,
                          left: 28,
                          child: Text(
                            "Lombok, Indonesia",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                      Positioned(
                          bottom: 28,
                          left: 187,
                          child: Text(
                            "€48",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 156,
                    width: 235,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Image.asset(
                      'Assets/images/look2.png',
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  // Positioned(
                  //     bottom: 28,
                  //     left: 279,
                  //     child: Text(
                  //       "Bromo Mountain",
                  //       style: TextStyle(
                  //           color: Colors.white, fontWeight: FontWeight.w500),
                  //     )),
                  // Positioned(
                  //     bottom: 13,
                  //     left: 14,
                  //     child: Icon(
                  //       Icons.location_on_rounded,
                  //       color: Colors.white,
                  //       size: 10,
                  //     )),
                  // Positioned(
                  //     bottom: 13,
                  //     left: 28,
                  //     child: Text(
                  //       "Lombok, Indonesia",
                  //       style: TextStyle(color: Colors.white, fontSize: 10),
                  //     )),
                  // Positioned(
                  //     bottom: 28,
                  //     left: 187,
                  //     child: Text(
                  //       "€48",
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 12,
                  //           fontWeight: FontWeight.w600),
                  //     )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Popular Destination",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text("View all",
                    style: TextStyle(fontSize: 15, color: Colors.blue)),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Color.fromARGB(255, 58, 163, 249),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  width: 325,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 204, 204, 204),
                          blurRadius: 3,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'Assets/images/look4.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "The Pink Beach",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blueAccent,
                                size: 8,
                              ),
                              Text(
                                "Komodo Island, Indonesia",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10),
                              )
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 185,
                            child: Text(
                              "This exceptional beach gets its striking color from microscopic animals called...",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black26),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "€48",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 12),
                              ),
                              Text(
                                "/Person",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 325,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 204, 204, 204),
                          blurRadius: 3,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'Assets/images/look5.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Meru Tower",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blueAccent,
                                size: 8,
                              ),
                              Text(
                                "Bali, Indonesia",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10),
                              )
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 185,
                            child: Text(
                              "This exceptional beach gets its striking color from microscopic animals called...",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black26),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "€36",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 12),
                              ),
                              Text(
                                "/Person",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 325,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 204, 204, 204),
                          blurRadius: 3,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'Assets/images/look6.png',
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Toraja Land",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blueAccent,
                                size: 8,
                              ),
                              Text(
                                "South Sulawesi, Indonesia",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10),
                              )
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 185,
                            child: Text(
                              "This exceptional beach gets its striking color from microscopic animals called...",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black26),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "€48",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 12),
                              ),
                              Text(
                                "/Person",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        color: Color.fromARGB(196, 183, 183, 183),
        backgroundColor: Colors.white,
        activeColor: Colors.blue,
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.favorite),
          GButton(icon: Icons.shopping_cart_rounded),
          GButton(icon: Icons.account_circle),
        ],
      ),
    );
  }
}

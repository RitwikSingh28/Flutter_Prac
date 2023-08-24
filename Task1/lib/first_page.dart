import 'package:flutter/material.dart';
import 'package:task_1/second_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Favourite',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Cart',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Spacer(flex: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Current Location",
                      style: TextStyle(
                          color: Color(0xFF8D94A2),
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                  Row(
                    children: [
                      Icon(
                        Icons.add_location,
                        color: Color(0xff1C9FE2),
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Text("Denpasar, Bali",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ],
                  )
                ],
              ),
              Spacer(flex: 4),
              Image(
                image: AssetImage(
                  "images/profile.png",
                ),
                height: 40,
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.blue),
          unselectedIconTheme: IconThemeData(color: Colors.black45),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Container(
                  width: double.infinity - 50,
                  child: Row(
                    children: [
                      Text("Category",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                      Spacer(
                        flex: 1,
                      ),
                      Row(
                        children: [
                          Text(
                            "View all",
                            style: TextStyle(color: Color(0xff1C9FE2)),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xff1C9FE2),
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 240, 240, 240)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage("images/si1.png")),
                                SizedBox(width: 5),
                                Text("Mountain",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 90, 89, 89),
                                        fontSize: 12)),
                              ],
                            )),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 240, 240, 240)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage("images/si2.png"),
                                    height: 20),
                                SizedBox(width: 5),
                                Text("Waterfall",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 90, 89, 89),
                                        fontSize: 12)),
                              ],
                            )),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 240, 240, 240)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage("images/si3.png"),
                                    height: 20),
                                SizedBox(width: 5),
                                Text("River",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 90, 89, 89),
                                        fontSize: 12)),
                              ],
                            )),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 240, 240, 240)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage("images/si4.png"),
                                    height: 20),
                                SizedBox(width: 5),
                                Text("Desert",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 90, 89, 89),
                                        fontSize: 12)),
                              ],
                            )),
                      ),
                      SizedBox(width: 25)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width:25),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/second_page");
                      },
                      child: Container(
                        height: 145,
                        width: 225,
                        child: Stack(children: [
                          Container(
                            height: 145,
                            width: 225,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image(
                                image: AssetImage("images/select1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Spacer(flex: 1),
                                Text(
                                  "Rinjhani Mountain",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(flex: 3),
                                Text("\$48",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Spacer(flex: 1)
                              ]),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Spacer(flex: 1),
                                  Icon(
                                    Icons.add_location,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  SizedBox(width: 5),
                                  Text("Lambork,Indonesia",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w200)),
                                  Spacer(flex: 3),
                                  Text("/Person",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w200)),
                                  Spacer(flex: 1)
                                ],
                              ),
                              SizedBox(height: 15),
                            ],
                          )
                        ]),
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/second_page");
                      },
                      child: Container(
                        height: 145,
                        width: 225,
                        child: Stack(children: [
                          Container(
                            height: 145,
                            width: 225,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image(
                                image: AssetImage("images/select2.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Spacer(flex: 1),
                                Text(
                                  "Bromo Mountain",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(flex: 3),
                                Text("\$38",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Spacer(flex: 1)
                              ]),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Spacer(flex: 1),
                                  Icon(
                                    Icons.add_location,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  SizedBox(width: 5),
                                  Text("East Java,Indonesia",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w200)),
                                  Spacer(flex: 3),
                                  Text("/Person",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w200)),
                                  Spacer(flex: 1)
                                ],
                              ),
                              SizedBox(height: 15),
                            ],
                          )
                        ]),
                      ),
                    ),
                    SizedBox(width: 25)
                  ],
                ),
              ),
              SizedBox(height: 35),
              Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Text("Popular Destination",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600)),
                      Spacer(),
                      Text(
                        "View all",
                        style: TextStyle(color: Color(0xff1C9FE2)),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xff1C9FE2),
                        size: 16,
                      ),
                      SizedBox(
                        width: 25,
                      )
                    ],
                  )),
              SizedBox(height: 35),
              Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(75, 216, 216, 216),
                                  offset: const Offset(
                                    0.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Image(
                                  image: AssetImage("images/cl1.png"),
                                  width: 105),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 18),
                                  Text("The Pink Beach",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location,
                                        color: Color(0xff1C9FE2),
                                        size: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text("Comodo Island,Indonesia",
                                          style: TextStyle(
                                              color: Color(0xff1C9FE2),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                      width: 160,
                                      child: Text(
                                        "This exceptional beach gets its striking color from microscopic animals called...",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 176, 181),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("\$48",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("/Person",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Colors.black54)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 15),
              Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(75, 216, 216, 216),
                                  offset: const Offset(
                                    0.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Image(
                                  image: AssetImage("images/cl2.png"),
                                  width: 105),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 18),
                                  Text("Meru Tower",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location,
                                        color: Color(0xff1C9FE2),
                                        size: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text("CBali, Indonesia",
                                          style: TextStyle(
                                              color: Color(0xff1C9FE2),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                      width: 160,
                                      child: Text(
                                        "A Meru tower or pelinggih meru is the principal shrine of a Balinese temple. It is a wooden..",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 176, 181),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("\$36",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("/Person",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Colors.black54)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 15),
              Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(75, 216, 216, 216),
                                  offset: const Offset(
                                    0.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 15),
                              Image(
                                  image: AssetImage("images/cl3.png"),
                                  width: 105),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 18),
                                  Text("Toraja Land",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location,
                                        color: Color(0xff1C9FE2),
                                        size: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text("South Sulawesi, Indonesia",
                                          style: TextStyle(
                                              color: Color(0xff1C9FE2),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                      width: 160,
                                      child: Text(
                                        "This exceptional beach gets its striking color from microscopic animals called...",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 176, 181),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("\$100",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("/Person",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Colors.black54)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 25),
            ],
          ),
        ));
  }
}

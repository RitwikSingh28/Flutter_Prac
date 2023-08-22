import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  backgroundColor: Colors.transparent,
      // ),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(
                    'assets/images/detail_bg_img.png',
                    height: 408,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  AppBar(
                    elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      title: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 230),
                          LikeButton(),
                          // Icon(Icons.favorite_border_rounded,),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 300),
                    height: 437,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            
                            height: 47,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Rinjani Mountain",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: 133,
                                        height: 12,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.blue,
                                              size: 11,
                                            ),
                                            Text(
                                              "Lombok, Indonesia",
                                              style: TextStyle(
                                                color: Color(0xff1C9FE2),
                                                fontSize: 11,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  // width: 80,
                                  height: 29,
                                  child: Row(
                                    children: [
                                      Text(
                                        " \$48",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("/person"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6),
                          Container(
                            width: 325,
                            height: 96,
                            child: Text(
                                "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia..."),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 325,
                            height: 66,
                            child: Row(
                              children: [
                                Text(
                                  "Preview",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 198,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text("4.8")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 325,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, right: 4.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child: Image.asset(
                                          "assets/images/im1.png",
                                          width: 90,
                                          height: 90,
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child: Image.asset(
                                          "assets/images/im2.png",
                                          width: 90,
                                          height: 90,
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child: Image.asset(
                                          "assets/images/im3.png",
                                          width: 90,
                                          height: 90,
                                        ),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child: Image.asset(
                                          "assets/images/im1.png",
                                          width: 90,
                                          height: 90,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 325,
                            height: 50,
                            color: Color.fromARGB(0, 33, 149, 243),
                            child: Stack(
                              children: [
                                Container(
                                  width: 325,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1C9FE2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Text('Shakti Prassna mohapatra',style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),),
                ]),
              ],
            )),
      ),
    );
  }
}

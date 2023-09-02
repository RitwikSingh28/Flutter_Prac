import 'package:flutter/material.dart';
import 'package:task1/utils/routes.dart';

bool isliked = false;

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: 410,
            width: 375,
            child: Image.asset('Assets/images/look10.png'),
          ),
          Positioned(
            top: 44,
            left: 25,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          Positioned(
            top: 44,
            right: 25,
            child: InkWell(
              onTap: () {
                setState(() {
                  isliked = !isliked;
                });
              },
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Icon(isliked ? Icons.favorite_border : Icons.favorite,
                    color: Colors.red),
              ),
            ),
          ),
          Positioned(
            top: 330,
            child: Container(
              width: 360,
              height: 482,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                children: [
                  SizedBox(
                    height: 37,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            "Rajani Mountain",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 16,
                              ),
                              Text(
                                "Lombok, Indonesia",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 97,
                      ),
                      Text(
                        "€48",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "/Person",
                        style: TextStyle(color: Colors.black26, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: 325,
                    height: 96,
                    child: Text(
                      "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Preview",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 183,
                      ),
                      Icon(
                        Icons.star_half_outlined,
                        color: Colors.orange,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black26),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('Assets/images/look7.png'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('Assets/images/look8.png'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('Assets/images/look9.png'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Image.asset('Assets/images/look11.png'),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: 325,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

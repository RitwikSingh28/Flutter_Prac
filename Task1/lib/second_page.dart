import 'package:flutter/material.dart';
import 'package:task_1/liked_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "images/back_logo.png",
              height: 30,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black45),
        title: Row(
          children: [
            Spacer(),
            LikeButton(),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            Image(
              image: AssetImage("images/bgimg.png"),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Container(
                  height: 550,
                  margin: EdgeInsets.only(top: 330),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rinjhani Mountain",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.add_location,
                                          color: Color(0xff1C9FE2),
                                          size: 13,
                                        ),
                                        SizedBox(width: 5),
                                        Text("Lambork,Indonesia",
                                            style: TextStyle(
                                                color: Color(0xff1C9FE2),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Text("\$48",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 2),
                                    Text("/Person",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38))
                                  ],
                                ),
                                SizedBox(width: 25),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(right: 25, left: 25),
                          child: Text(
                            "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, left: 25),
                          child: Container(
                            child: Row(
                              children: [
                                Text("Preview",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xfff6f8fa)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 25),
                              Image.asset("images/ri1.png", height: 90),
                              SizedBox(width: 15),
                              Image.asset("images/ri2.png", height: 90),
                              SizedBox(width: 15),
                              Image.asset("images/ri3.png", height: 90),
                              SizedBox(width: 15),
                              Image.asset("images/ri1.png", height: 90),
                              SizedBox(width: 25),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            decoration: BoxDecoration(),
                            height: 48,
                            width: 300,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  minimumSize: Size(100, 40),
                                  elevation: 0.0,
                                  primary: Color(0xff1C9FE2),
                                ),
                                onPressed: () {},
                                child: Text("Book Now"))),
                                SizedBox(height:40),
                                
                          
                      ],
                    ),
                  ),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}

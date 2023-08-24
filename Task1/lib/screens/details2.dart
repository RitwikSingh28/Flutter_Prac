import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:assignshubh/screens/home.dart';

class Detail2 extends StatefulWidget {
  const Detail2({Key? key}) : super(key: key);

  @override
  State<Detail2> createState() => _Detail2State();
}

class _Detail2State extends State<Detail2> {
  bool _isfav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                child: Image(image: NetworkImage('https://www.journeyera.com/wp-content/uploads/2018/11/mount-bromo-without-a-tour-king-kong-hill-0600.jpg',),
                  fit: BoxFit.fill,alignment: Alignment.topCenter,
                ),),
              Positioned(
                  top: 40,
                  left: 20,
                  child: Container(
                    height: 40,
                    width: 48,
                    child: TextButton.icon(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                    }, icon: Icon(Icons.arrow_back, color: Colors.black,), label: Text(''), style:
                    ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),),
                  )),
              Positioned(
                  top: 40,
                  right: 25,
                  child: Container(
                    height: 40,
                    width: 48,
                    child: TextButton.icon(onPressed: () {
                      setState(() {
                        _isfav = !_isfav;
                      });
                    }, icon: Icon( _isfav?
                    Icons.favorite_border: Icons.favorite, color: Colors.red,), label: Text(''), style:
                    ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),),
                  ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 1.0,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text('Bromo mountain', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              SizedBox(height: 6,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, size: 16, color: Colors.blueAccent,),
                                  Text(' East Java, Indonesia  ', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 14),)
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text('\$36', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          Text('/person    ', style: TextStyle(fontSize: 14, color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 13,),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: RichText(text: const TextSpan(
                            text: 'Located some 4 hours drive from Surabaya, the capital of East Java, Mount Bromo is a part of the Bromo Tengger Semeru National Park that covers a massive area of 800 square km. While it may be small when measured against other volcanoes in Indonesia, the magnificent Mt Bromo will not disappoint with its spectacular views and dramatic landscapes.'
                            ,style: TextStyle(color: Colors.grey, wordSpacing: 2.0, fontSize: 15)),),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 8,),
                          Text('Preview', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          Spacer(), Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton.icon(onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                              ) ,icon: Icon(Icons.star, color: Colors.yellow,), label: Text('4.8', style: TextStyle(color: Colors.grey),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 8,),
                            Container(
                              height: 100,
                              width: 120,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage('https://media.tacdn.com/media/attractions-splice-spp-674x446/09/1d/c1/2b.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://www.remotelands.com/storage/media/446/conversions/b130127030-banner-size.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://triptins.com/wp-content/uploads/2016/03/Steps-up-Mount-Bromo.jpeg.webp'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://awesomeplacestovisit.com/wp-content/uploads/2020/09/Asia-Indonesia-Mount-Bromo-1-1024x768-1.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://theworldtravelguy.com/wp-content/uploads/2021/04/DJI_0182.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        width: 330,
                        height: 40,
                        child: ElevatedButton(onPressed: (){},
                          child: Text('Book Now',style: TextStyle(fontSize: 18)),),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

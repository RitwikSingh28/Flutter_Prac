import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:assignshubh/screens/home.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
                child: Image(image: NetworkImage('https://www.journeyera.com/wp-content/uploads/2017/11/mount-rinjani-trekking-review-blog-040265.jpg',),
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
                              Text('Rinjani Mountain', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 16, color: Colors.blueAccent,),
                                  Text(' Lambok, Indonesia    ', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 14),)
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text('\$48', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          Text('/person    ', style: TextStyle(fontSize: 14, color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 13,),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: RichText(text: TextSpan(
                            text: 'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lambok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia.'
                                ' At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...'
                            ,style: TextStyle(color: Colors.grey, wordSpacing: 2.0, fontSize: 15)),),
                      ),
                      SizedBox(height: 10,),
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
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage('https://www.laughtraveleat.com/wp-content/uploads/2023/01/view-summit-mount-rinjani-trek-lombok-indonesia-laugh-travel-eat-2.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://www.myfiveacres.com/wp-content/uploads/2017/09/08-Aug-2017-Mount-Rinjani-Trekking-12.jpg'),
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
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://triptins.com/wp-content/uploads/2020/01/Rinjani-Trekking.jpeg'),
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
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://trekking-rinjani.com/wp-content/uploads/2019/12/319.jpg'),
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
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage('https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/3c/20/40.jpg'),
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

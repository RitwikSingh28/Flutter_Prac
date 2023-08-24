import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:assignshubh/screens/home.dart';

class Detail3 extends StatefulWidget {
  const Detail3({Key? key}) : super(key: key);

  @override
  State<Detail3> createState() => _Detail3State();
}

class _Detail3State extends State<Detail3> {
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
                child: Image(image: NetworkImage('https://media.tacdn.com/media/attractions-splice-spp-674x446/07/a3/81/e3.jpg',),
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
                              Text('Tanah Lot       ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 16, color: Colors.blueAccent,),
                                  Text(' Tabanan, Bali, Indonesia    ', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 14),)
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text('\$32', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          Text('/person    ', style: TextStyle(fontSize: 14, color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 13,),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: RichText(text: TextSpan(
                            text: 'Located in Tabanan, about 20 kilometres (12 mi) North West of Denpasar, the temple sits on a large offshore rock which has been shaped continuously over the years by the ocean tide. Tanah Lot is claimed to be the work of the 16th-century Dang Hyang Nirartha.'
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
                                      image: NetworkImage('https://theworldtravelguy.com/wp-content/uploads/2020/11/DJI_0943_1200.jpg'),
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
                                        image: NetworkImage('https://a.cdn-hotels.com/gdcs/production75/d966/8994658f-13ad-4106-bde4-856450359f47.jpg'),
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
                                        image: NetworkImage('https://img.traveltriangle.com/blog/wp-content/uploads/2019/02/tanah-lot-Cover.jpg'),
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
                                        image: NetworkImage('https://a.cdn-hotels.com/gdcs/production138/d651/7116f603-7bd2-4051-bcf1-1ec8527ba84e.jpg'),
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
                                        image: NetworkImage('https://nusapenida-balitour.com/wp-content/uploads/2020/03/tanah-lot-bali-tour-package-scaled.jpg'),
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

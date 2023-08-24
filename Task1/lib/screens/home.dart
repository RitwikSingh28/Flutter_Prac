import 'package:flutter/material.dart';
import 'package:assignshubh/screens/details.dart';
import 'package:assignshubh/screens/details2.dart';
import 'package:assignshubh/screens/details3.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.view_timeline_rounded, color: Colors.grey,),
        ),
        title: Column(
          children: [
            const Text('Current Location', style: TextStyle(color: Colors.grey, fontSize: 12),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on, color: Colors.blueAccent, size: 13,),
                Text(' Denpasar, Bali', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLQyB1bZE6R8vlbna_E8juV54V5Mu_nSBg1w&usqp=CAU'),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15, width: 10,),
          Row(
            children: [SizedBox(width: 10,),
              Text('Category', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),),
              new Spacer(),
              InkWell(
                onTap: (){},
                child: Text('View all',style: TextStyle(color: Colors.blueAccent, fontSize: 16),),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_outlined, color: Colors.blueAccent,))
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 62,
            width:  MediaQuery. of(context).size.width*1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(width: 6,),
                SizedBox(
                  height: 50,
                  width: 180,
                  child: Card(
                    elevation: 1.0,
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgAbmDW-obmBv3cBS5VakmG0BLCPZlahbUWf2-v3Rcza--MXxu'),
                      ),
                      title: Text('Mountain', style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: Card(
                    elevation: 1.0,
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyg4NG4A0KnoYVe202MZPHdCxVv3lM07DMug&usqp=CAU'),
                      ),
                      title: Text('Waterfall', style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 160,
                  child: Card(
                    elevation: 1.0,
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1426604966848-d7adac402bff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZmllbGQlMjBhbmltYXRlZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                      ),
                      title: Text('Fields', style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24,),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://www.journeyera.com/wp-content/uploads/2017/11/mount-rinjani-trekking-review-blog-040265.jpg')),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            child: Column(
                              children: [
                                Text('Rinjhani Mountain', style: TextStyle(
                                    fontSize: 16, color: Colors.white, letterSpacing: 1.0
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.location_on, size: 13,color: Colors.white,),
                                    Text('Lambok, Indonesia', style: TextStyle(color: Colors.white, fontSize: 12),)
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail2()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://www.journeyera.com/wp-content/uploads/2018/11/mount-bromo-without-a-tour-king-kong-hill-0600.jpg')),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        // child:  ClipRRect(
                        //   child: BackdropFilter(
                        //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10,),
                        //     child: Container(
                        //       height: 20,
                        //       width: 20,
                        //       color: Colors.transparent,
                        //     ),
                        //   ),
                        // ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            child: Column(
                              children: [
                                Text('Bromo Mountain', style: TextStyle(
                                    fontSize: 16, color: Colors.white, letterSpacing: 1.0
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.location_on, size: 13,color: Colors.white,),
                                    Text('East Java, Indonesia', style: TextStyle(color: Colors.white, fontSize: 12),)
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail3()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://media.tacdn.com/media/attractions-splice-spp-674x446/07/a3/81/e3.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        // child:  ClipRRect(
                        //   child: BackdropFilter(
                        //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10,),
                        //     child: Container(
                        //       height: 20,
                        //       width: 20,
                        //       color: Colors.transparent,
                        //     ),
                        //   ),
                        // ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            child: Column(
                              children: [
                                Text('Tanah Lot', style: TextStyle(
                                    fontSize: 16, color: Colors.white, letterSpacing: 1.0
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.location_on, size: 13,color: Colors.white,),
                                    Text('Tabanan,Bali, Indonesia', style: TextStyle(color: Colors.white, fontSize: 12),)
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24,),
          Row(
            children: [
              SizedBox(width: 10,),
              const
              Text('Popular Destination', style: TextStyle(color: Colors.black87,
                fontSize: 24, fontWeight: FontWeight.bold,),),
              new Spacer(),
              const
              Text('View all', style: TextStyle(
                color: Colors.blueAccent, fontSize: 16,
              ),),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: Colors.blueAccent,))
            ],
          ),
          SizedBox(height: 16,),
          Container(
            height: 300,
            width: 350,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 120,
                  width: 100,
                  child: Card(
                      elevation: 2.0,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48),
                              child: Image.network('https://static.toiimg.com/thumb/74254559.cms?resizemode=75&width=1200&height=900',
                                fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              SizedBox(height: 10,),
                              Text('The Pink Beach', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, size: 13, color: Colors.blueAccent,),
                                  Text('Komodo Island, Indonesia',style: TextStyle(color: Colors.blueAccent, fontSize: 12),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              const Text('This exceptional beach gets its striking', style: TextStyle(color: Colors.grey, fontSize: 11),),
                              const Text('color from microscopic animals...   ', style: TextStyle(color: Colors.grey, fontSize: 11),),
                              SizedBox(height: 5,),
                              Row(
                                children:const [
                                  Text('\$ 48', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                                  Text(" /person                           ", style: TextStyle(color: Colors.grey, fontSize: 11),)
                                ],
                              )
                            ],
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 6,),
                SizedBox(
                  height: 120,
                  width: 100,
                  child: Card(
                      elevation: 2.0,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48),
                              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa-kPL8EpB4vR4WI3kGoCxAABsO0mAr2NDCA&usqp=CAU',
                                fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              SizedBox(height: 10,),
                              Text('Meru Tower', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, size: 13, color: Colors.blueAccent,),
                                  Text('Bali, Indonesia   ',style: TextStyle(color: Colors.blueAccent, fontSize: 12),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              const Text('  A Meru tower or pelinggih meru is the', style: TextStyle(color: Colors.grey, fontSize: 11),),
                              const Text('principal shrine of balinese temple. It is a...', style: TextStyle(color: Colors.grey, fontSize: 11),),
                              SizedBox(height: 5,),
                              Row(
                                children:const [
                                  Text('\$ 36', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                                  Text(" /person                           ", style: TextStyle(color: Colors.grey, fontSize: 11),)
                                ],
                              )
                            ],
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 6,),
                SizedBox(
                  height: 120,
                  width: 100,
                  child: Card(
                      elevation: 2.0,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48),
                              child: Image.network('https://floresexotictours.id/wp-content/uploads/2016/05/Toraja-land-1-2.jpg',
                                fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              SizedBox(height: 10,),
                              Text('Toraja Land', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, size: 13, color: Colors.blueAccent,),
                                  Text('South Sulawesi, Indonesia   ',style: TextStyle(color: Colors.blueAccent, fontSize: 12),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              const Text('“Discovered” and opened to the world', style: TextStyle(color: Colors.grey, fontSize: 11),),
                              const Text('from their long isolation only since the...', style: TextStyle(color: Colors.grey, fontSize: 11),),
                              SizedBox(height: 5,),
                              Row(
                                children:const [
                                  Text('\$ 32', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                                  Text(" /person                           ", style: TextStyle(color: Colors.grey, fontSize: 11),)
                                ],
                              )
                            ],
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBar(
              backgroundColor: Colors.white,
              items:[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled, color: Colors.blueAccent,), label: ''
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, color: Colors.grey,), label: '',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart, color: Colors.grey,), label: ''
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.grey,), label: ''
                ),
              ]
          )
        ],
      ),
    );
  }
}
import 'package:assn1/verCard.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'customApp.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  var category =[' Mountains',
      'Rivers',
    'Beaches',
        'Islands',

  ];
var images =[
  'https://images.unsplash.com/photo-1534067783941-51c9c23ecefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bW91bnRhaW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
     , 'https://media.istockphoto.com/id/1337232523/photo/high-angle-view-of-a-lake-and-forest.webp?b=1&s=170667a&w=0&k=20&c=MMQAIpDombUQd_8FV9os3jLzza26-oqaOhO3AgUSt9k='
      ,'https://images.unsplash.com/photo-1506953823976-52e1fdc0149a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhY2h8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
      ,'https://media.istockphoto.com/id/1369175723/photo/isolated-tropical-island-middle-of-ocean.webp?b=1&s=170667a&w=0&k=20&c=GVeQuBvTu34VXwJeheWjqUvDuBLIAe0AgJcFJ7uclsA=',
];

 // List<Color> _itemColors = [Colors.blue, Colors.red,Colors.green,Colors.pink];
  void _onTap(int index)=> _currentIndex= index;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme:ThemeData(
          scaffoldBackgroundColor: Color(0xFFEDF2F6),

        ),

        home: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Scaffold(
            backgroundColor: Colors.white,
       appBar:PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
    child: customAppBar(),),
          body:
       SingleChildScrollView(

         child: Column(                 children:[
             SizedBox(height:20),Row(
                    children: [
                      SizedBox(height:10),
                      Text("Category",style: TextStyle(
                        fontSize:24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                      Spacer(),
                      Text("View All",style: TextStyle(
                        fontSize:16,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w400,
                      )),
                      IconButton(icon:Icon(Icons.arrow_forward_sharp),onPressed: (){},)
                    ],
                  ),


                SingleChildScrollView(

                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(6),

          child:

          Row(
            children:[
            for(int i=0;i<4;i++)
               Container(
                 margin: EdgeInsets.all(8),

            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                )
              ]

            ),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(images[i]),)
                ,Text(            category[i],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),

            ),
                SizedBox(width: 10,),
            ],

          ),

                ),
              SizedBox(width: 20,
                height:20,
              )
            ],),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.25,

                  child: HorizontalCards(

                  ),
                ),
                    SizedBox(
                      height: 20,
                    ),

                  Row(
             children: [
               Text("Popular Destination",style: TextStyle(
                    fontSize:24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
               Spacer(),
               Text("View All",style: TextStyle(
                 fontSize:16,
                 color: Colors.lightBlue,
                 fontWeight: FontWeight.w400,
               ),),
               IconButton(icon:Icon(Icons.arrow_forward_sharp),onPressed: (){},)
             ],
         ), SizedBox(
                      width: 350,
                      height: 350,


                          child: VerticalCard(



                        ),
                    ),
                  ],),
       )


            ,bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              currentIndex: _currentIndex,
              onTap: _onTap,
              items: [
                BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.blue,),
                  label: 'Home',

                ),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite,color: Colors.grey,),
          label: 'favourites',
          ),
      BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
          label: 'shopping cart',
          ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'profile',),


              ],
                  ),



          ),
        ),
    );}}


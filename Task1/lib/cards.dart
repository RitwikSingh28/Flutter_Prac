

import 'package:flutter/material.dart';
import 'package:assn1/PostScreen.dart';

import 'item.dart';

class HorizontalCards extends StatefulWidget {


  @override
  State<HorizontalCards> createState() => _HorizontalCardsState();
}

class _HorizontalCardsState extends State<HorizontalCards> {
  final List<String> imageURLs= ['https://volcano.si.edu/gallery/photos/GVP-12125.jpg'
    ,'https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/java/east-java/bromo-tengger-semeru-national-park/point-of-interest/mount-bromo/13ac754b7fc7cdf2094fe85a1d82bcba9bfcedbd-4743e.jpg'
  ];
  final List<String> title = ['Ramini ', 'Bromo'];

  final List<String> location=["Lombok,Indonesia","East Java, Indonesia"];
  final List<String> cost =["\$48",'\$36'];


  @override
  Widget build(BuildContext context) {


    return ListView.separated(
        scrollDirection: Axis.horizontal,
       itemCount: imageURLs.length,
        separatorBuilder: (context,_)=>SizedBox(width: 12,),


        itemBuilder:(context,index){
          return buildCard( item: items[index]);
    });

}}
class buildCard extends StatelessWidget {
  final Item item;
  buildCard({required this.item});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.push(context,
        MaterialPageRoute(builder: (context)=>PostScreen(item:item),),),

      child: Container(

        width:260,
        height:100,
        child: Stack(
          alignment: Alignment.topLeft,
          children:[ SizedBox(height:20),Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12),
           image: DecorationImage(
             image: NetworkImage(item.url),
             fit:BoxFit.cover,

           ),),),
   Container(
     alignment: Alignment.bottomLeft,
     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.end
       ,
       children: [
         Row(
           children: [Text(item.title,style:TextStyle(
             color: Colors.white,
             fontSize: 18,
             fontWeight: FontWeight.bold
           )),Spacer(),Text(item.cost,style:TextStyle(
               color: Colors.white,
               fontSize: 18,
               fontWeight: FontWeight.bold

           )),],),
           Row(
           children: [Icon(Icons.location_on,color: Colors.white,size:10),Text(item.location,style:TextStyle(
             color: Colors.white,)),Spacer(),Text("/Person",
             style:TextStyle(
               color: Colors.white,)),],),

       ],
     ),
   )

   /*         Column(
           mainAxisAlignment: MainAxisAlignment.end,

             children:[ Row(children: [ Text(item.title),
               Text(item.cost)],),
               Expanded(
                 child: Row(
                   children: [
                     Row(
                       children: [
                         Icon(Icons.location_on),
                         Text(item.location),
                       ],
                     )
                     ,
                     Text("/Person")
                   ],

                 ),
               ),

             ],

          ),*/]
     ),
      ),
    ) ;



  }
}

/*InkWell(
  onTap: ()=>Navigator.push(context,
    MaterialPageRoute(builder: (context)=>PostScreen(item:item),),),

  child: Card(

  margin:EdgeInsets.all(7.0),  child: Container(
  width:200,
  height:100,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(12),
  image: DecorationImage(
  image: NetworkImage(item.url),
  fit:BoxFit.cover,

  ),),

  child: Column(
  children:[ Row(children: [ Text(item.title),
  Text(item.cost)],),
  Row(
  children: [
  Row(
  children: [
  Icon(Icons.location_on),
  Text(item.location),
  ],
  )
  ,
  Text("/Person")
  ],

  )

  ]),

  ),
  ),
  ) ;








*/
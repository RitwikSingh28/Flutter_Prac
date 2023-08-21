import 'package:assn1/postAppBar.dart';

import 'package:flutter/material.dart';
import 'package:assn1/item.dart';
import 'item.dart';
class PostScreen extends StatefulWidget {


  final Item item;
  PostScreen({required this.item});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(widget.item.url),opacity: 0.8
        ,fit: BoxFit.cover),),
        child:Scaffold(


          body: Column(
            children: [
              Stack(
                children:[ Container(
                  height: MediaQuery.of(context).size.height*0.4,

                  child: Image(image: NetworkImage(widget.item.url,),
                    fit: BoxFit.fill,

                  ),),
      Positioned(


          child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color:Colors.white,
                    boxShadow: [BoxShadow(
                        color: Colors.white,
                        blurRadius: 6
                    ),
                    ]
                ),
                child: Icon(Icons.arrow_back ,size: 25,),
              ),
            ),
            InkWell(
              onTap: (){},

              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,

                ),
                child: IconButton(icon: Icon(!fav? Icons.favorite:Icons.favorite_outline,color: Colors.red,size
                    :28),
                  onPressed: (){
                    setState(() {
                      fav = !fav;
                    });

                  },),

              ),
            )

          ],

        ),

      )),

      ]
              ),
              Column(

                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,left:20,right:20),
                    height: MediaQuery.of(context).size.height*0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),

                    ),
                    child: ListView(
                      children: [
                        Padding(padding: EdgeInsets.only(),
                        child: Column(
                          children: [
                            Row(children: [
                              Text(widget.item.title,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              )),
                              Spacer(),
                              Text(widget.item.cost,style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,

                              )),
                              Text("/person"),



                            ],),
                            SizedBox(
                              height:7,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.blue,size: 15,),
                                Text(widget.item.location,style: TextStyle(
                                  color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:16
                                ),)
                              ],

                            ),
                            SizedBox(height:10),
                            Text(widget.item.desc,style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,children:
                            [

                              Text("Preview",
                              style: TextStyle
                                (fontSize: 22, fontWeight: FontWeight.bold),),
                                  Spacer(),
                              Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 35,
                                      child: TextButton.icon(onPressed: (){},
                                        style: ButtonStyle(

                                          backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                                        ) ,icon: Icon(Icons.star, color: Colors.yellow,), label: Text(widget.item.rating.toString(), style: TextStyle(color: Colors.grey),),
                                      ),
                                    ),
                              ),],),
                            SizedBox(height:20),
                            Container(
                              height:100,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:ListView.separated(
                                itemCount: widget.item.preview.length,
                                separatorBuilder: (context,_)=>SizedBox(width: 12,height:200),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {

                                    return Card(
                                      child:
                                        AspectRatio(

                                          aspectRatio: 4/3,
                                          child: Image(image:NetworkImage(widget.item.preview[index]),
                                          fit:BoxFit.cover),
                                        )

                                    );


                                },

                              )
                            ),
                            SizedBox(height:20),

                            Container(
                              width: MediaQuery.of(context).size.width*0.85,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(onPressed:(){}, child: Text("Book Now",style:TextStyle(
                                fontSize: 16,
                              )),

                                style: ButtonStyle(

                                alignment: Alignment.center,
                                  backgroundColor:  MaterialStateProperty.all<Color>(Colors.blue))

                              ),
                            ),
                          ],
                        )
                      ,),],

                    ),

                  ),
                ],
              ),
            ],
          ),
),

          );
  }
}

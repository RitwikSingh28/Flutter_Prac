import 'package:flutter/material.dart';
class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  //Size get prefferedSize =>Size.fromHeight(kToolbarHeight*0.5);
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Icon(Icons.sort_rounded,color: Colors.grey,),
      title: Center(
        child: Column(
          children: [
            Text("Current Location",
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),),
            SizedBox(
              height:7
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on,color: Colors.blue,size:16),
                Text("Denaspur, Bali",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,),
                ),
              ],
            )
          ],

        ),
      ),
      actions: [
        CircleAvatar(radius: 30,backgroundColor: Colors.blue,child:Image.network('https://cdn3.vectorstock.com/i/1000x1000/37/12/avatar-man-cartoon-with-mustache-and-hat-vector-31333712.jpg') ,),
      ],
    );
  }
}

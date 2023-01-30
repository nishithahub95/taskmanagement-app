 import 'package:chatapp/peopleModel.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/about.dart';

class personDetailCard extends StatelessWidget {
  final Person person;
  const personDetailCard({Key? key,required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.white,
      elevation: 50.0,
      margin: EdgeInsets.fromLTRB(12, 10, 18, 3),
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(

          children: [
            IconButton(onPressed: (){
              //About();
              Navigator.push(context, MaterialPageRoute(builder:(context) =>About()));
             // Navigator.push(context, Route(settings: RouteSettings));
            }, icon: Icon(Icons.navigate_next)),
            Container(
              width: 80,
              height: 90,
              padding: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 5,color: Colors.white),
                image: DecorationImage(image: AssetImage(person.image)),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,3),
                     blurRadius: 7,
                      spreadRadius: 8
                    )
                  ]
              ),

            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 8,bottom:8 ),
                  child: Text(person.name,style: TextStyle(fontSize: 18),),
                ),
                Padding(padding: EdgeInsets.only(top: 0,bottom:0 ),
                  child: Text(person.job,style: TextStyle(fontSize: 15,color: Colors.grey),),
                ),
                Padding(padding: EdgeInsets.only(top: 0,bottom:0 ),
                  child:Row(
                    children: [
                      Icon(Icons.access_time_outlined,size: 15,),
                      SizedBox(width: 5,),
                      Text(person.time,style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ],
                  )
                  
                )
              ],
            ),
            Expanded(child: Row(
              children: [
                Expanded(child: Container()),
                Icon(Icons.more_vert)
              ],
            ))
          ],
        ),
      ),
    );
  }
}

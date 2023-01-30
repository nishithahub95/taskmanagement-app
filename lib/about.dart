import 'package:chatapp/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/IconContainer.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFFfef9eb),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(18, 30, 18, 18),
            margin: const EdgeInsets.only(bottom: 20),

            decoration: BoxDecoration(
                color: Color(0xFF26C6DA),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,size: 25,),
                    Icon(Icons.search,size: 25)
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.only(left: 30,right: 30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/image3.jfif')
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Text('Priya',style: TextStyle(fontSize: 20),),
                       // Text('Priya',style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    )
                  ],
                )
              ],
            ),

          ),
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 18,right: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Task',style: TextStyle(fontSize: 20,color: Colors.black),),
                      IconContainer(bgColor: Colors.red, borderColor: Colors.grey, width:80 , height: 80, size: 30, index: 0)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconContainer(bgColor: Colors.green, borderColor: Colors.grey, width:80 , height: 80, size: 30, index: 1),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text('To do',style: TextStyle(fontSize: 20),),
                          Text('I have to do',style: TextStyle(fontSize: 15),)
                        ],
                      )

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(

                    children: [

                      IconContainer(bgColor: Colors.green, borderColor: Colors.grey, width:80 , height: 80, size: 30, index: 2),
                      SizedBox(width: 10,),
                      Column(
                        children: [

                          Text('Next month',style: TextStyle(fontSize: 20),),
                          Text('visiting clients',style: TextStyle(fontSize: 15),)
                        ],
                      )

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Active Projects',style: TextStyle(fontSize: 25),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color(0xFF3d9393)

                        ),
                        child: Column(
                          children:
                          [
                            Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 50)),
                            IconContainer(bgColor: Color(0xFF3d9393), borderColor: Colors.grey, width:80 , height: 80, size: 30, index: 4),
                            SizedBox(height: 10,),
                            Text('Medical App',style: TextStyle(fontSize: 18,color: Colors.white),)


                          ]
                        ),
                      ),
                      //SizedBox(width: 10,),
                      Container(
                        width: 180,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.cyan


                        ),
                        child: Column(
                            children:
                            [
                              Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 50)),
                              IconContainer(bgColor: Colors.cyan, borderColor: Colors.grey, width:80 , height: 80, size: 30, index: 5),
                              SizedBox(height: 10,),
                              Text('Constraction App',style: TextStyle(fontSize: 18,color: Colors.white),)


                            ]
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),

    );
  }
}

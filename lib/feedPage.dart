import 'package:flutter/material.dart';
import 'package:chatapp/peopleModel.dart';
import 'package:chatapp/personCard.dart';

class feedPage extends StatefulWidget {
  const feedPage({Key? key}) : super(key: key);

  @override
  State<feedPage> createState() => _feedPageState();
}

class _feedPageState extends State<feedPage> {

  List<Person> person=[
    Person(name: "Ema", job: 'Software Engineer', time: '12.20', image: 'images/image1.jfif'),
    Person(name: "Mariya", job: 'Software Engineer', time: '3.20', image: 'images/image2.jfif'),
    Person(name: "Priya", job: 'Software Engineer', time: '7.00', image: 'images/image3.jfif'),
    Person(name: "Jhon", job: 'Software Engineer', time: '12.20', image: 'images/image4.webp'),
    Person(name: "Robin", job: 'Software Engineer', time: '8.50', image: 'images/image5.jfif'),

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(18, 50, 18, 18),
          color: Color(0xFF26C6DA),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Feed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36),),
              Icon(Icons.format_align_center_outlined,size: 30,)
            ],
          ),
        ),
        Expanded(child: SingleChildScrollView(
          child: Column(
            children: person.map((p){
              return personDetailCard(person:p);
            }).toList()
          ),
        ))
      ],

    );
  }
}

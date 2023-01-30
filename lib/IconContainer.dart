import 'package:flutter/material.dart';
class IconContainer extends StatelessWidget {

 final Color bgColor,borderColor;
 final double width,height,size;
 final int index;

 IconContainer({required this.bgColor, required this.borderColor, required this.width, required this.height,
   required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    List<IconData> _icon=[
      Icons.event_note,
      Icons.work,
      Icons.umbrella,
      Icons.add_location,
      Icons.medical_services,
      Icons.cast_for_education_outlined,
      Icons.construction,
      Icons.flight,

    ];
    return Container(
      width: this.width,
      height: this.height,
      child: Icon(_icon[index],size: this.size,color: Colors.white,),
      decoration: BoxDecoration(color: this.bgColor,
      shape: BoxShape.circle),
    );
  }
}

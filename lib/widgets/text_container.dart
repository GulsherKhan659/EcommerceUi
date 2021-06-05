import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final textTitle,textContent;
  TextContainer({this.textTitle,this.textContent});
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(textTitle,style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(height: 3,),
        Text(textContent,style: TextStyle(
          color: Colors.grey.shade500,
        ),),
      ],),
    );
  }
}

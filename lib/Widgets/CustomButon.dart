
import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  CustomButon({ this.ontap,
    this.hight
    ,required this.colorText,
    required this.text,
    this.width
    , required this.color}) ;
String text;
  double? hight;
  double? width;
  Color color;
  Color colorText;
VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(

        decoration: BoxDecoration(

            color: color,
            borderRadius: BorderRadius.circular(10)
        ),

        width: width,
        height: hight,
        child:Center(child: Text(text,
        style:  TextStyle(
          fontSize: 22,
          color: colorText,
        ),
        )),
      ),
    );
  }
}
class CustomWidget extends StatelessWidget {
  CustomWidget({super.key,
    this.ontap,
    this.hight
    ,required this.colorText,
    required this.text
    , required this.color
  ,this.width}) ;
  String text;
  double? hight;
  double? width;
  Color color;
  Color colorText;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(

        decoration: BoxDecoration(

            color: color,
            borderRadius: BorderRadius.circular(10)
        ),

        width: width,
        height: hight,
        child:Center(child: Text(text,
          style:  TextStyle(
            fontSize: 22,
            color: colorText,
          ),
        )),
      ),
    );
  }
}

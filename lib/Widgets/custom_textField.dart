import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText,this.onChanged,this.icon,this.width,this.height});
String? hintText;
double?width;
double?height;
IconData? icon;
   Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {

    return   SizedBox(
      height: height,
      width:width ,
      child: TextField(


        onChanged: onChanged ,

        decoration: InputDecoration(
   hintText:hintText,
suffixIcon:Icon(icon) ,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                    color: Colors.black
                )
            ),
            border:const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),

                borderSide: BorderSide(
                    color: Colors.black
                )

            )
        ),
      ),
    );
  }
}
class contener extends StatelessWidget {
  contener ({required this.text,required this.imagePath});
  String text;
  String imagePath;
  @override
  Widget build(BuildContext context) {
   return(
       Container(
         alignment: Alignment.centerRight,
         height: 44,
         width: 400,
         decoration: BoxDecoration(
           borderRadius: const BorderRadius.all(Radius.circular(20)),
             color: Colors.white,
             border: Border.all(color: Colors.black)
         ),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Text(text),
             Image.asset(imagePath,
               height: 24,
               width: 24,

             )
           ],
         ),
       )
   );
  }


}
class Contener_K extends StatelessWidget{
  Contener_K({required this.text1,required this.text2});
String text1;
String text2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
    Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color((0xff8ecae6))
      ),
      height: 77,
      width: 383,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(  text2,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: "Inter",
                    color: Color(-16767142)
                ),
              ),
              Text(text1,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: Color(-16767142)
                ),
              ),
            ],
          ),
          Image.asset('Images/img_7.png',
          height: 54,
            width: 56,
          )
        ],
      ),
    )
        
    );
  }
}

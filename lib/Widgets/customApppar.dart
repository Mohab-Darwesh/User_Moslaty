import 'package:flutter/material.dart';



class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Container(
        decoration: const BoxDecoration(
            color: Color(0xff8ecae6),
            borderRadius: BorderRadius.all(Radius.circular(30))

        ),

        padding: const EdgeInsets.all(10),
        height: 130,
        alignment: Alignment.center ,
        width: 7200,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: (){Navigator.pop(context);},
              icon: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(300)),
                  color: Color(0xD8023047),
                ),
                height: 60,
                width: 60,

                child: Image.asset("Images/img_1.png",
                  width: 46,
                  height: 46,

                ),
              ),
            )
          ],
        )
    );
  }

}
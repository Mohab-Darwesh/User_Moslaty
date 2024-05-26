// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:moslaty/Widgets/drawer.dart';

import '../Car/my_car.dart';
import '../S_home/S_home.dart';
import '../help.dart';
import '../kabten/kabten.dart';
class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  int currentPageIndex=0;
  GlobalKey<ScaffoldState> Scaffoldkey6 =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey6,
        drawer: const Drawer(
          child: Drawer_Widget(),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              if(index==0){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const S_HomePage();
                    }));
              }
              else if(index==1){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const My_car();
                    }));
              }
              else{
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const Kabten();
                    }));

              }

            });
          },
          indicatorColor: const Color(0xEF023047),
          backgroundColor: Colors.white,
          selectedIndex: currentPageIndex,
          destinations:  <Widget>[
            const NavigationDestination(

              selectedIcon: Icon(Icons.home,
                color: Color(0xC8023047),
              ),
              icon: Icon(Icons.home),
              label: 'الرئيسيه',
            ),
            NavigationDestination(

              icon: Image.asset("Images/Car.png",
                color: const Color(0xC8023047),

                height: 24,
                width: 24,
              ),
              label: 'بيانات السياره',
            ),
            NavigationDestination(
              icon: Image.asset("Images/Stat.png",
                height: 24,
                width: 24,
              ),
              label: 'الاحصائات',
            ),
          ],
        ),
        body:Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Color(0xff8ecae6),
                    borderRadius: BorderRadius.all(Radius.circular(30))

                ),

                padding: const EdgeInsets.all(10),
                height: 130,
                alignment: Alignment.center ,
                width: 7200,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:(){

                      Scaffoldkey6.currentState!.openDrawer();
                      },
                      child: const Icon(  Icons.menu,
                        size: 44,
                        color: Color(0xFA023047),
                      ),
                    ),
                    Image.asset("Images/AppIcon.jpg",
                      width: 72,
                      height: 72,
                    ),

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
                    ),

                  ],
                )
            ),

          ],
        )

    );
  }
}

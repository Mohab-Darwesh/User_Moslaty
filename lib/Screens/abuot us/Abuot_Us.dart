import 'package:flutter/material.dart';
import 'package:moslaty/Screens/person/M_email.dart';
import 'package:moslaty/Widgets/drawer.dart';

import '../Car/my_car.dart';
import '../S_home/S_home.dart';
import '../help.dart';
import '../kabten/kabten.dart';
class About_us extends StatefulWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override

  int currentPageIndex=0;
  GlobalKey<ScaffoldState> Scaffoldkey2 =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey2,
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
          crossAxisAlignment: CrossAxisAlignment.end,
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

                       Scaffoldkey2.currentState!.openDrawer();
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
            const SizedBox(height: 15,),
            const Center(
              child: Text('نبذة عن الشركة',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF023047),
              ),
              ),
            ),
            const SizedBox(height: 15,),
Center(
  child:   Image.asset("Images/img_8.png",

  height: 131,

    width: 321,

  ),
),
            const SizedBox(height: 15,),
            const Text('تأسست شركة مصر للنقل الجماعي في عام 2019 '
         '   وهي أحدث شركة في مجموعة مصر. وهي شركة تقدم خدمة النقل السياحي بهيئة النقل الجماعي. برفاهية ودقة بين المحافظات السياحية وغيرها'
         '   مثل البحر الأحمر وشرم الشيخ والأقصر وأسوان وغيرها المحافظات',
              style: TextStyle(

                fontSize: 16,
                color:Color(0xFF023047) ,
                fontFamily: 'inter',
                fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.end,
            ),
            const SizedBox(height: 15,),
            Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xff8ecae6),
            ),
            const SizedBox(height: 20,),
            const Text(' أهدافنا',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color:Color(0xFF023047),
              fontFamily: 'inter',

            ),
              textAlign: TextAlign.end,
            ),
            const SizedBox(height: 15,),



          ],
        )

    );
  }
}

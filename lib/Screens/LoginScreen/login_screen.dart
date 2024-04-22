import 'package:flutter/material.dart';

import '../../Widgets/CustomButon.dart';
import '../../Widgets/custom_textField.dart';
import '../Sign_up/sign_up.dart';


class LoginScreen extends StatelessWidget {

  const LoginScreen ({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),


        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children:  [
             const SizedBox(height: 90,),
         //     const Spacer(flex: 1,),
              Center(
                child: Image.asset("Images/AppIcon.jpg",
                height: 96,
                  width: 96,
                ),
              ),
              const Center(
                child: Text('تسجيل دخول',

                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,

                  ),),
              ),
         //     const Spacer(flex: 1,),


              const SizedBox(
                height: 15,

              ),
              const Text("البريد الاكتروني ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black
              ),
              ),

              CustomTextField(
                width: 400,
                height: 45,
                hintText: " ادخل البريد الاكتروني ",
              ),
              const SizedBox(
                height: 10,

              ),
              const Text("كلمة السر",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              CustomTextField(
                width: 400,
                height: 45,
                hintText: "ادخل الرقم السري" ,
              ),
              const SizedBox(
                height: 15,

              ),
              CustomButon(
                width: 400,
                text: 'تسجيل دخول', color: const Color(0xFA023047),
                colorText: Colors.white,
                ontap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return LoginScreen();
                        //return const S_HomePage();
                      }));
                } ,
              ),
              const SizedBox(
                height: 15,

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return const Sign_UpPage() ;
                          }));
                    },
                    child: const Text("  إنشاء حساب جديد",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(-580755617)),),
                  ),

                 const  Text("أليس لديك حساب؟ ",
                    style:TextStyle(
                        color: Colors.black
                    )
                    ,),

                ],
              ),
               const Text("أو"),
           //   const Spacer(flex: 1,),
contener(text: " الدخول بواسطة حساب جوجل ",
    imagePath: 'Images/IconGoogle.png'),
              const SizedBox(height: 10,),
              //دا كونتينر انا عامله موجود في فولدر ال ًwidget موجود في فيل custom _TextField
       contener(text: " الدخول عبر حساب الفيس بوك ",
             imagePath: "Images/FaceBokeIcon.png"),
            //  const Spacer(flex: 3,),
            ],
          ),
        ),
      ) ,
    )
    ;
  }
}
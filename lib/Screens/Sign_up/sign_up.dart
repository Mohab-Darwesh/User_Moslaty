import 'package:flutter/material.dart';


import '../../Widgets/CustomButon.dart';
import '../../Widgets/custom_textField.dart';
import '../LoginScreen/login_screen.dart';

class Sign_UpPage extends StatelessWidget {
  const Sign_UpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   body:   Container(
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
                child: Text('إنشاء حساب جديد',

                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,

                  ),),
              ),
              //     const Spacer(flex: 1,),


              const SizedBox(
                height: 15,

              ),
              const Text("الاسم ثلاثي ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                ),
              ),

              CustomTextField(
                height: 45,
                width: 400,
                hintText: " ادخل الاسم ثلاثي ",
              ),
              const SizedBox(
                height: 10,

              ),
              const Text("البريد الاكتروني",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              CustomTextField(
                height: 45,
                width: 400,
                hintText: "ادخل البريد الاكتروني " ,
              ),
              const SizedBox(
                height: 15,

              ),
              const Text("كلمة السر",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              CustomTextField(
                width: 400,
                height: 45,
                hintText: "ادخل كلمة السر " ,
              ),
              const SizedBox(
                height: 15,

              ),
              const Text("تأكيد كلمة السر ",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              CustomTextField(
                height: 45,
                width: 400,
                hintText: "تأكيد كلمة السر " ,
              ),
              const SizedBox(
                height: 15,

              ),
              const Text("رقم الهاتف",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              CustomTextField(
                hintText: "ادخل رقم الهاتف " ,
                width: 400,
                height: 45,
              ),
              const SizedBox(
                height: 15,

              ),
              CustomButon(
                width: 400,
                text: 'إنشاء حساب', color: const Color(0xFA023047),
                colorText: Colors.white,
                ontap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const LoginScreen();
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
                            return const LoginScreen() ;
                          }));
                    },
                    child: const Text("  تسجيل دخول",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(-580755617)),),
                  ),

                  const  Text("لديك حساب بالفعل؟ ",
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
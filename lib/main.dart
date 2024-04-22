import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/LoginScreen/login_screen.dart';

void main() {
  runApp(const User_Moslaty());
}

class User_Moslaty extends StatelessWidget {
  const User_Moslaty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: S(),
    );
  }
}

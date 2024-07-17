import 'package:exmtast/view/sign_in/sign_in.dart';
import 'package:exmtast/view/sign_up/sign_up.dart';

import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: SignIn(),
    );
  }
}
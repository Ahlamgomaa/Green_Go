import 'package:flutter/material.dart';
import 'package:greengo/screens/splash_screen.dart';

void main (){
  runApp( GreanGoApp());
}
class GreanGoApp extends StatelessWidget{
   GreanGoApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: SplashScreen(),
    );
  }

}
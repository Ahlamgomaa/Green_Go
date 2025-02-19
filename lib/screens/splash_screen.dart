import 'package:flutter/material.dart';
import 'package:greengo/main.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// Replace with your actual main screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();  // Removes native splash when Flutter starts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => GreanGoApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 190, 152),  // Match with native splash screen color
      body: Center(
        child: Lottie.asset("assets/animations/splash.json", width: 200, height: 200,),
      ),
    );
  }
}

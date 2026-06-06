import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showlogo = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        showlogo = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: showlogo ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: AnimatedScale(
                  scale: showlogo ? 1.7 : 0.7,
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.elasticOut,
                  child: Image.asset('images/Infinity_img.png',width: 300,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

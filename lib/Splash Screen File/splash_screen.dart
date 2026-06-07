import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showCurtains = true;
  bool showLogo = false;
  bool showText = false;
  bool showLoading = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        showCurtains = false;
      });
    });

    Future.delayed(const Duration(milliseconds: 1400), () {
      setState(() {
        showLogo = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2400), () {
      setState(() {
        showText = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 3000),(){
      setState(() {
        showLoading = true;
      });
    });

    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        Navigator.pushReplacementNamed(context, 'Login');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff0F172A), Color(0xff1E3A8A)],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: showLogo ? 1 : 0,
                    duration: const Duration(milliseconds: 1000),
                    child: AnimatedScale(
                      scale: showLogo ? 1.7 : 0.7,
                      duration: const Duration(milliseconds: 2000),
                      curve: Curves.elasticOut,
                      child: Image.asset('images/Infinity_img.png', width: 200),
                    ),
                  ),
                  const SizedBox(height: 30),
                  AnimatedSlide(
                    offset: showText ? Offset.zero : const Offset(0, 0.5),
                    duration: Duration(milliseconds: 800),
                    curve: Curves.easeOutCubic,
                    child: AnimatedOpacity(
                      opacity: showText ? 1 : 0,
                      duration: Duration(milliseconds: 800),
                      child: Text(
                        "Loop Chat",
                        style: TextStyle(
                          fontFamily: 'Gremio',
                          fontSize: 42,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w800,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: AnimatedOpacity(
              opacity: showLoading ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: LinearProgressIndicator(
                backgroundColor: Colors.indigo,
                color: Colors.white70,
                minHeight: 4,
              ),
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 1200),
            curve: Curves.easeInOutQuart,
            left: showCurtains ? 0 : -size.width / 2,
            top: 0,
            bottom: 0,
            width: size.width / 2,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1E3A8A),
                border: Border(
                  right: BorderSide(color: Colors.white10, width:1),
                ),
              ),
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 1200),
            curve: Curves.easeInOutQuart,
            right: showCurtains ? 0 : -size.width / 2,
            top: 0,
            bottom: 0,
            width: size.width / 2,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1E3A8A),
                border: Border(
                  right: BorderSide(color: Colors.white10, width: 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

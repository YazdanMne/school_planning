import 'package:flutter/material.dart';
import 'package:school_planning/responsive/Desktop/desktop_body.dart';

import 'package:school_planning/responsive/Mobile/mobile_body.dart';
import 'package:school_planning/responsive/Constants/responsive_layout.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}

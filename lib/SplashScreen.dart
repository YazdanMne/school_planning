import 'package:flutter/material.dart';
import 'package:school_planning/responsive/desktop_body.dart';
import 'package:school_planning/responsive/mobile_body.dart';
import 'package:school_planning/responsive/responsive_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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

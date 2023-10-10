import 'package:flutter/material.dart';

class DesktopLogIn extends StatelessWidget {
  const DesktopLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 15,
                ),
                child: Image(
                  image: AssetImage('assets/images/LogIn_Image.png'),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                ),
              ),
              Text(
                'برای ورود به برنامه اسم خود را وارد کنید',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 25,
                  fontFamily: "SHB",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

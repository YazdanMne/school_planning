import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_planning/responsive/Mobile/general_lesson.dart';

class MobileLogIn extends StatefulWidget {
  const MobileLogIn({Key? key});

  @override
  State<MobileLogIn> createState() => _MobileLogInState();
}

class _MobileLogInState extends State<MobileLogIn> {
  bool isTextFieldEmpty = true;
  Color buttonColorDisabled = Color(0xffFFB6D9);
  Color buttonColorEnabled = Color(0xffD67BFF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
                child: Image(
                  image: AssetImage('assets/images/LogIn_Image.png'),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.width * 0.80,
                ),
              ),
              Text(
                'برای ورود به برنامه اسم خود را وارد کنید',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontFamily: "SHB",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  onChanged: (text) {
                    setState(() {
                      isTextFieldEmpty = text.isEmpty;
                      buttonColorDisabled = isTextFieldEmpty
                          ? buttonColorDisabled
                          : buttonColorEnabled;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xffD67BFF),
                      ),
                    ),
                    hintText: "نام شما",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'SHM',
                    ),
                  ),
                ),
              ),
              MaterialButton(
                minWidth: 350,
                height: 75,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation: 10.0,
                color:
                    isTextFieldEmpty ? buttonColorDisabled : buttonColorEnabled,
                onPressed: isTextFieldEmpty
                    ? () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text('لطفا نام خود را وارد کنید'),
                              content: Text('لطفا نام خود را وارد کنید'),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (_) => const MobileLogIn(),
                                        ),
                                      );
                                      //action code for "Yes" button
                                    },
                                    child: Text('Yes')),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); //close Dialog
                                  },
                                  child: Text('Close'),
                                )
                              ],
                            );
                          },
                        );
                      }
                    : () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => General_Lesson(),
                          ),
                        );
                      },
                child: Text(
                  'بزن بریم',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'SHM',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

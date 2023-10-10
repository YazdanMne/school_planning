import 'package:flutter/material.dart';
import 'package:school_planning/responsive/Mobile/home_page.dart';

class MobileLogIn extends StatefulWidget {
  const MobileLogIn({super.key});

  @override
  State<MobileLogIn> createState() => _MobileLogInState();
}

bool isButtonEnabled = false;
final _textController = TextEditingController();
final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

class _MobileLogInState extends State<MobileLogIn> {
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
                  onChanged: (value) {
                    setState(() {
                      isButtonEnabled = value.isNotEmpty;
                    });
                  },
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Color(0xffD67BFF),
                        )),
                    hintText: "نام شما",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (isButtonEnabled) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mobile_HomePage(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('HelloWorld'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ).merge(
                  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isButtonEnabled ? Color(0xffD67BFF) : Color(0xffFFB6D9),
                    ),
                  ),
                ),
                child: Text(
                  'بزن بریم',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "SHM",
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

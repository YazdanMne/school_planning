import 'package:flutter/material.dart';
import 'package:school_planning/responsive/Desktop/home_page.dart';

class DesktopLogIn extends StatefulWidget {
  const DesktopLogIn({super.key});

  @override
  State<DesktopLogIn> createState() => _DesktopLogInState();
}

bool isButtonEnabled = false;
final _textController = TextEditingController();

class _DesktopLogInState extends State<DesktopLogIn> {
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
                      ),
                    ),
                    hintText: "نام شما",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
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
                onPressed: isButtonEnabled
                    ? () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const Desktop_HomePage(),
                          ),
                        );
                      }
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill a TextField first.'),
                          ),
                        );
                      },
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

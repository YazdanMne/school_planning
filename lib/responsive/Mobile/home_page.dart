import 'package:flutter/material.dart';

class Mobile_HomePage extends StatelessWidget {
  const Mobile_HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text(
                'Amirkhosravi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

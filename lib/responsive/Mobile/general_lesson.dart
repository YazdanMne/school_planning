import 'package:flutter/material.dart';

class General_Lesson extends StatelessWidget {
  const General_Lesson({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(child: Text('Amir 1')),
                Center(child: Text('Amir 1'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(child: Image.asset('assets/images/open_book.png')),
                Center(child: Image.asset('assets/images/book.png')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(child: Image.asset('assets/images/books.png')),
                Center(child: Image.asset('assets/images/game.png')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(child: Image.asset('assets/images/more.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

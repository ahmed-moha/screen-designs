import 'package:flutter/material.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF264653),
      appBar: AppBar(
        backgroundColor: const Color(0xff264653),
        title: const Text('My Card '),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/tiger.jpg'),
                    radius: 45,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Name',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'AHMED MOHAMED',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffa5a58d)),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Work',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'MOBILE DEVELOPER',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffa5a58d)),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Email',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Color(0xffa5a58d),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'AHMEDMOHAMED@JUST.EDU.SO',
                  style: TextStyle(
                      color: Color(0xffa5a58d),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Number',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: const [
                Icon(
                  Icons.call,
                  color: Color(0xffa5a58d),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '+252619855422',
                  style: TextStyle(
                      color: Color(0xffa5a58d),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

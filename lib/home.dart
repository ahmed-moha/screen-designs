import 'package:design_project/detail_screen.dart';
import 'package:design_project/login.dart';
import 'package:design_project/my_card.dart';
import 'package:flutter/material.dart';

import 'deegaan.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              child: const Text('Login Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: const Text('Detail Screen'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const DeegaanScreen()));
              },
              child: const Text('Deegaan Screen'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const MyCardScreen()));
              },
              child: const Text('My Card Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

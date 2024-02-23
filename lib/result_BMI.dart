import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double yourResult;
  final bool gender;
  final int age;
  const Result({Key? key, 
    required this.yourResult,
    required this.gender,
    required this.age,

  }) : super(key: key);

  // const Result({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Your Result : ${yourResult.round()}',
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 30,
              ),
            ),
            Text(
              'Gender : ${gender ? 'Male' : 'Female'}',
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 30,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
  }


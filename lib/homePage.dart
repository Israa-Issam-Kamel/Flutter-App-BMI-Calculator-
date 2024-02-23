import 'dart:math';

import 'package:flutter/material.dart';

import 'result_BMI.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Home4AZState();
}

bool isMale = true;
double height = 120;
int weight = 55;
int age = 16;
double result = 0;

class _Home4AZState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.teal[900],
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.tealAccent[100],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 100,
                          color: Colors.teal[800],
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            color: Colors.teal[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          color: isMale
                              ? Colors.teal.shade800
                              : Colors.teal.shade300,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.teal[300],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 100,
                          color: Colors.teal[800],
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            color: Colors.teal[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          color: isMale
                              ? Colors.teal.shade300
                              : Colors.teal.shade800,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.teal[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // padding: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 35, color: Colors.teal[800]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()} ',
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.teal[900],
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal[800],
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                    min: 80,
                    max: 220,
                    divisions: 140,
                    activeColor: Colors.teal[900],
                    inactiveColor: Colors.teal[200],
                    thumbColor: Colors.tealAccent[100],
                  ),
                ],
              ),
              width: 385,
              height: 200,
              //margin: EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                color: Colors.teal[500],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(
                          color: Colors.teal[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        "$weight",
                        style: TextStyle(
                          color: Colors.teal[200],
                          fontSize: 35,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.teal[200],
                            ),
                            backgroundColor: Colors.teal[900],
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                                if (weight == 4) {
                                  weight = 5;
                                }
                              });
                            },
                            child: Icon(
                              Icons.minimize,
                              color: Colors.teal[200],
                            ),
                            backgroundColor: Colors.teal[900],
                          ),
                        ],
                      ),
                    ],
                  ),
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.teal[800],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                          color: Colors.teal[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        "$age",
                        style: TextStyle(
                          color: Colors.teal[200],
                          // fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.teal[200],
                            ),
                            backgroundColor: Colors.teal[900],
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age--;
                                if (age == 0) {
                                  age = 1;
                                }
                              });
                            },
                            child: Icon(
                              Icons.minimize,
                              color: Colors.teal[200],
                            ),
                            backgroundColor: Colors.teal[900],
                          ),
                        ],
                      ),
                    ],
                  ),
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.teal[800],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 390,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  result = weight / pow(height / 100, 2);
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                              yourResult: result,
                              gender: isMale,
                              age: age,
                            )));
              },
              child: Text(
                "CALCULAT",
                style: TextStyle(
                  color: Colors.tealAccent[100],
                  fontSize: 25,
                ),
              ),
              color: Colors.teal[900],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'homePage.dart';

void main(){
  runApp(const App());
}
// ignore: camel_case_types
class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'app4',
      home: HomePage(),

    );
  }

}
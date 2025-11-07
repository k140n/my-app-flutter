import 'package:flutter/material.dart';
import 'package:may_dice_app/DashboardScreen.dart';
import 'package:may_dice_app/DiceScreen.dart';

void main(){

  runApp(MyWidget());

}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboardscreen(),
    );
  }
}
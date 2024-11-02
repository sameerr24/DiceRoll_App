import 'package:flutter/material.dart';
import 'package:flutter_projects/diceroller.dart';

//Variables ~
//Alignment? startAlignment=Alignment.topLeft;   //Variables with Alignment data type (? says it stores either NULL initally)
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.center; //var is used to initialize variables
//var variables can be changed, thus use final(runtime) or  const(compile time) for constant values of variables
//var~final~const

class GradientTool extends StatelessWidget {
  const GradientTool(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2; //final is used to declare constant variables

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment),
        ),
        child: const Center(
          //child: TextTool("Sameer's First App"),
          child: Diceroller(),
        ));
  }
}

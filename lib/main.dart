import 'package:bmi_calculat/BMI_CALCULATOR.dart';
import 'package:bmi_calculat/bmi_result.dart';
import 'package:flutter/material.dart';
void main(){
  return(runApp(const MyApp()));
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BMI(),
    );
  }

}
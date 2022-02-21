
import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  bool isMale=true;
  double height =120;
  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.deepPurple,
       title: const Center(
         child: Text(
           'IBM CALCULATOR',
         ),
       ),
     ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                         isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: isMale ?Colors.deepPurple:Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Image(
                                image:AssetImage('assets/imeges/mal.png'),
                              height: 90,
                              width: 90,
                              color: Colors.white,
                            ),
                            Text(
                                'MALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: !isMale?Colors.deepPurple:Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const[
                            Image(
                              image:AssetImage('assets/imeges/fem2.png'),
                              height: 90,
                              width: 90,
                              color: Colors.white,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text(
                      'HIEGHT',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                             Text(
                              '${height.round()}',
                              style: const TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                             const Text(
                              'cm',
                               style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                               ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      child: Slider(
                        activeColor: Colors.deepPurple,
                          value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value)
                          {
                            setState(() {
                              height=value;
                              print(value.round());
                            });
                          },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                           Text(
                              'WEIGHT',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           Text(
                            '$weight',
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                heroTag: 'weight--',
                                mini: true,
                                  child:const Icon(Icons.add),
                                backgroundColor: Colors.deepPurple,

                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight++',
                                mini: true,
                                child:const Icon(Icons.remove),
                                backgroundColor: Colors.deepPurple,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                           Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                     age++;
                                  });
                                },
                                heroTag: 'age++',
                                mini: true,
                                child:const Icon(Icons.add),
                                backgroundColor: Colors.deepPurple,

                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                      age--;
                                  });
                                },
                                heroTag: 'age--',
                                mini: true,
                                child:const Icon(Icons.remove),
                                backgroundColor: Colors.deepPurple,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height:55,
            width: double.infinity,
            color: Colors.deepPurple,
            child: MaterialButton(
              onPressed: (){
                double result = weight /pow(height/100, 2);
                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context) => bmi_result(
                          isMale: isMale,
                          result: result.round(),
                          age: age,
                          weight: weight,
                        ) ,
                    ),
                );
              },
              child:const Text(
                  'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

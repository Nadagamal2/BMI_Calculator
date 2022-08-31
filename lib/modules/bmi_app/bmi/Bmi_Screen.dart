import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/Bmi_Result_Screen.dart';


class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
bool isMale=true;
double height =120.0;
int weight =40;
int age =20;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
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

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                Icons.male,
                              size: 70,
                            ),

                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale?Colors.blue: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;

                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                            ),

                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:!isMale?Colors.blue: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ],

                ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                    Slider(
                        value:height ,
                        max: 220.0,
                        min: 80.0,
                        onChanged:(value){
                          setState(() {
                            height=value;
                          });
                          print(value.round());
                        } ,),

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],

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
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });

                              },
                                heroTag: 'weight--',
                                mini: true,
                              child: Icon(
                                Icons.remove,
                              ),),
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });

                                },
                                heroTag: 'weight++',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });

                                },
                                heroTag: 'age--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),),
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });

                                },
                                heroTag: 'age++',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
           Container(
             width: double.infinity,
             color: Colors.blue,
             height: 50.0,
             child: MaterialButton(onPressed: (){
               double result =weight/pow(height/ 100,2);

               print(result.round());
               Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (context)=> BMIResultScreen(result: result.round(), age: age, isMale: isMale),
                 ),
               );

             },
             child: Text(
               'CALCULATE',
               style: TextStyle(
                 color: Colors.white,
               ),
             ),),
           ),

        ],
      ),
    );
  }
}

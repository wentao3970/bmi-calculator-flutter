import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const backgroundColor = Color(0xFF0E112F);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 175;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: 'child'.text.makeCentered(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Color(0xFF2D1D04),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          'child'.text.makeCentered(),
                        ],
                      ),
                    ),
                  ),
                ],
              ).p12(),
            ),
            Expanded(
              child: Container(
                color: Color(0xFF16232F),
                child: Column(
                  children: [
                    'HEIGHT'.text.headline6(context).gray500.make(),
                    Row(
                      children: [
                        height
                            .toString()
                            .text
                            .headline2(context)
                            .white
                            .bold
                            .make(),
                        'cm'.text.subtitle1(context).gray500.make(),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 130.0,
                      max: 230.0,
                      activeColor: Colors.pink,
                      inactiveColor: Colors.grey,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ).p12(),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: 'child'.text.makeCentered(),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: 'child'.text.makeCentered(),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

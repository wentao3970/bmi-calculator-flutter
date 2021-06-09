import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const backgroundColor = Color(0xFF090F3E);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                          Icon(Icons.person),
                          'child'.text.makeCentered(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: 'child'.text.makeCentered(),
              ),
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

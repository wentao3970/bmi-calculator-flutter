import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'item_cell.dart';

const backgroundColor = Color(0xFF0E112F);
const _kTextColor = Colors.grey;

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
                    child: ItemCell(
                      childWidget: 'MAN'
                          .text
                          .bold
                          .headline6(context)
                          .color(_kTextColor)
                          .make(),
                    ),
                  ),
                  Expanded(
                    child: ItemCell(
                      childWidget: 'WOMAN'
                          .text
                          .bold
                          .headline6(context)
                          .color(_kTextColor)
                          .make(),
                    ),
                  ),
                ],
              ),
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
                        'cm'.text.subtitle1(context).color(_kTextColor).make(),
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
                    child: ItemCell(
                      childWidget: 'weight'
                          .text
                          .uppercase
                          .semiBold
                          .color(_kTextColor)
                          .make(),
                    ),
                  ),
                  Expanded(
                    child: ItemCell(
                      childWidget: 'age'
                          .text
                          .uppercase
                          .semiBold
                          .color(_kTextColor)
                          .make(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.pink[400],
              height: 80,
              width: double.infinity,
              child: 'calculate'
                  .text
                  .uppercase
                  .headline6(context)
                  .bold
                  .white
                  .makeCentered(),
            ).pOnly(top: 12.0).onTap(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage();
              }));
            })
          ],
        ),
      ),
    );
  }
}

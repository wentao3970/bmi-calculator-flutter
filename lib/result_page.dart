import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'input_page.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: 'BMI Calculator'.text.make(),
      ),
      body: Column(
        children: [
          Expanded(
            child: 'Calculation result'
                .text
                .headline6(context)
                .white
                .makeCentered(),
          ),
        ],
      ),
    );
  }
}

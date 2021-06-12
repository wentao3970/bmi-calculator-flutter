import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const _kCardColor = Color(0xFF16232F);

class ItemCell extends StatelessWidget {
  final Widget childWidget;

  const ItemCell({Key key, this.childWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _kCardColor,
      child: childWidget.centered(),
    ).p12();
  }
}

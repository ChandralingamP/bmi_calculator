import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard ({@required this.color,this.cardChild,this.onpress});
  final Color color;
  final Widget cardChild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
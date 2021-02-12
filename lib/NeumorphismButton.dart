import 'package:cp_booster/colors.dart';
import 'package:flutter/material.dart';
import 'CalculationWidget.dart';
import 'colors.dart';

class Neumorphism extends StatefulWidget {
  String buttonTitle;
  int buttonNumber;

  Neumorphism(this.buttonTitle, this.buttonNumber);

  @override
  _NeumorphismState createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CalculationWidget(
                buttonNumber: widget.buttonNumber,
              ),
            ));
      },
      child: Container(
        color: white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.39,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: kboxShadow,
                ),
                child: Center(
                    child: Text(
                  widget.buttonTitle,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bmi_calculator/ReuseableCard.dart';
import 'package:bmi_calculator/constant_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(ResultPage());
class ResultPage extends StatelessWidget {
  ResultPage({@required this.interpretation,@required this.bmiResult,@required this.resultText});

  final String interpretation;
  final String bmiResult;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMICalculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              "RESULT PAGE",
              textAlign: TextAlign.center,
              style: KTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: KActiveCardColor,
              cardChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kResultTextstyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextstyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultTextstyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              color: Color(0xFFEB1555),
              height: 80.0,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

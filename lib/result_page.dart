import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              'YOUR RESULT',
              style: kTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal',style: kResultTextStyle,),
                  Text('18.2',style: kBMITextStyle,),
                  Text('Your BMI Result is Quite Low, You Should it More',style: kBodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
              ),),
              BottomButton(buttonTitle: 'RE-CALCULATE',onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InputPage()),
            );
          },
          ),
        ],
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(icon:FontAwesomeIcons.mars,label: 'MALE'),
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
                cardChild: IconContent(icon:FontAwesomeIcons.venus,label: 'FEMALE'),
              )),
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: activeCardColor,
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
              )),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
              )),
            ],
          )),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}





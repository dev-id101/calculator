import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF283637),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: 'AC',
                fillColor: 0xFF6C807F,
              ),
              CalcButton(
                text: 'C',
                fillColor: 0xFF6C807F,
              ),
              CalcButton(
                text: '%',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
              ),
              CalcButton(
                text: '/',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '7',
              ),
              CalcButton(
                text: '8',
              ),
              CalcButton(
                text: '9',
              ),
              CalcButton(
                text: '*',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '4',
              ),
              CalcButton(
                text: '5',
              ),
              CalcButton(
                text: '6',
              ),
              CalcButton(
                text: '-',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '1',
              ),
              CalcButton(
                text: '2',
              ),
              CalcButton(
                text: '3',
              ),
              CalcButton(
                text: '+',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '.',
              ),
              CalcButton(
                text: '0',
              ),
              CalcButton(
                text: '00',
              ),
              CalcButton(
                text: '=',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

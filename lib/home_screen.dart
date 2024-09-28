import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    setState(() {
      _history = _expression;
      _expression = 'solved';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF283637),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 12),
            alignment: const Alignment(1, 1),
            child: Text(
              _history,
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(fontSize: 24),
                color: const Color(0xFF545F61),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            alignment: const Alignment(1, 1),
            child: Text(
              _expression,
              style: GoogleFonts.rubik(
                  textStyle: const TextStyle(fontSize: 48),
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: 'AC',
                fillColor: 0xFF6C807F,
                callback: allClear,
              ),
              CalcButton(
                text: 'C',
                fillColor: 0xFF6C807F,
                callback: clear,
              ),
              CalcButton(
                text: '%',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callback: numClick,
              ),
              CalcButton(
                text: '/',
                callback: numClick,
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
                callback: numClick,
              ),
              CalcButton(
                text: '8',
                callback: numClick,
              ),
              CalcButton(
                text: '9',
                callback: numClick,
              ),
              CalcButton(
                text: '*',
                callback: numClick,
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
                callback: numClick,
              ),
              CalcButton(
                text: '5',
                callback: numClick,
              ),
              CalcButton(
                text: '6',
                callback: numClick,
              ),
              CalcButton(
                text: '-',
                callback: numClick,
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                textSize: 38,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '1',
                callback: numClick,
              ),
              CalcButton(
                text: '2',
                callback: numClick,
              ),
              CalcButton(
                text: '3',
                callback: numClick,
              ),
              CalcButton(
                text: '+',
                callback: numClick,
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
                callback: numClick,
              ),
              CalcButton(
                text: '0',
                callback: numClick,
              ),
              CalcButton(
                text: '00',
                callback: numClick,
              ),
              CalcButton(
                text: '=',
                callback: evaluate,
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

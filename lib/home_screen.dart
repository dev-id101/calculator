import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              '123*123',
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
              '123',
              style: GoogleFonts.rubik(
                  textStyle: const TextStyle(fontSize: 48),
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
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
          const Row(
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
          const Row(
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
                textSize: 38,
              ),
            ],
          ),
          const Row(
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
          const Row(
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

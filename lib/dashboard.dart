import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  CalculatorAppState createState() => CalculatorAppState();
}

//Design do aplicativo separado em um arquivo .dart
class CalculatorAppState extends State<CalculatorApp> {
  String _historico = "";
  String _expressao = "";

//Todas as funções do aplicativo estão nesse escopo.
//Uma função foi feita para dar o click e mostrar na tela.

//E duas funções onde ele vai limpar tudo o que estiver na tela!

  void clickNumber(String text) {
    setState(() {
      _expressao += text;
    });
  }

  void limpar(String text) {
    setState(() {
      _expressao = "";
    });
  }

  void limparTudo(String text) {
    setState(() {
      _historico = "";
      _expressao = "";
    });
  }

  void validarConta(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expressao);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _historico = _expressao;
      _expressao = eval.toString();
    });
  }

  void piAccount(String text) {
    setState(() {
      _expressao = "3.14159";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CalculatorApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Calculator App",
            style: GoogleFonts.rubik(),
          ),
          backgroundColor: Color(0xFF5A5A5A),
        ),
        backgroundColor: Color(0xFF323232),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              _historico,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 24,
                  color: Color(0xFFA9A9A9),
                ),
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              _expressao,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculadoraBotoes(
                nomearBotoes: "AC",
                corDoBotao: 0xFF2A2A2A,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: limparTudo,
              ),
              CalculadoraBotoes(
                nomearBotoes: "C",
                corDoBotao: 0xFF2A2A2A,
                corDoTexto: 0xFFD22B2B,
                tamanhoTexto: 24,
                callback: limpar,
              ),
              CalculadoraBotoes(
                nomearBotoes: "%",
                corDoBotao: 0xFFA8A8A8,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "/",
                corDoBotao: 0xFFA8A8A8,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculadoraBotoes(
                nomearBotoes: "7",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "8",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "9",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "*",
                corDoBotao: 0xFFA8A8A8,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 30,
                callback: clickNumber,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculadoraBotoes(
                nomearBotoes: "4",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "5",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "6",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "-",
                corDoBotao: 0xFFA8A8A8,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 40,
                callback: clickNumber,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculadoraBotoes(
                nomearBotoes: "1",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "2",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "3",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "+",
                corDoBotao: 0xFFA8A8A8,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 30,
                callback: clickNumber,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculadoraBotoes(
                nomearBotoes: "π",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: piAccount,
              ),
              CalculadoraBotoes(
                nomearBotoes: "0",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: ".",
                corDoBotao: 0xFF00CED1,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 24,
                callback: clickNumber,
              ),
              CalculadoraBotoes(
                nomearBotoes: "=",
                corDoBotao: 0xFFA8A8A8,
                corDoTexto: 0xFFFFFFFF,
                tamanhoTexto: 28,
                callback: validarConta,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

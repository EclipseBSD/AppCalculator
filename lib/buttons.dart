import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Aqui é um arquivo separado para os botões do aplicativo.
//Feito uma classe do tipo "stateless" para mostrar que é estático.
class CalculadoraBotoes extends StatelessWidget {
  final String nomearBotoes;
  final int corDoTexto;
  final int corDoBotao;
  final double tamanhoTexto;
  final Function callback;

//Construtor com as variáveis declarados dentro da classe.
  const CalculadoraBotoes({
    Key? key,
    required this.callback,
    required this.nomearBotoes,
    this.corDoTexto = 0xFFFFFF,
    required this.corDoBotao,
    required this.tamanhoTexto,
  }) : super(key: key);

//Aqui está toda a base adicionando algumas dependencias.
//Estou utilizando a dependencia "Google fonts" para personalizar o texto.
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 64,
        height: 64,
        //Configuração dos botões da calculadora.
        // ignore: deprecated_member_use
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Text(
            nomearBotoes,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: tamanhoTexto,
              ),
            ),
          ),
          onPressed: () {
            callback(nomearBotoes);
          },
          // ignore: unnecessary_null_comparison
          color: corDoBotao != null ? Color(corDoBotao) : null,
          textColor: Color(corDoTexto),
        ),
      ),
    );
  }
}

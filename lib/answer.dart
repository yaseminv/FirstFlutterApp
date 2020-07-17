import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

final Function selectHandler; //herhangi bir fonksiyon çeşidi
final String answer; //cevap

Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[50],
        child: Text(answer),
        onPressed: selectHandler, ),
    );
  }
}
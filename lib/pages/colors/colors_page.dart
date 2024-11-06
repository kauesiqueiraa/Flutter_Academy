import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
const ColorsPage({ super.key });

  @override
  Widget build(BuildContext context){
    // final cor = Colors.blue;
    // final cor = Colors.blue.withOpacity(0.5);
    // final cor = Color.fromRGBO(0, 0, 255, 1);
    final cor = Color(0xFF17599D);

    return Scaffold(
      appBar: AppBar(title: const Text("Colors"),),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
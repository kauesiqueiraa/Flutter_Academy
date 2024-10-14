import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rows e Columns")),
      body: Container(
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Elemento 1'),
            const Text('Elemento 2'),
            const Text('Elemento 3'),
            Container(
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Elemento 1'),
                  Text('Elemento 2'),
                  Text('Elemento 3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
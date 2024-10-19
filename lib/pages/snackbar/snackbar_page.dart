import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBars')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.green,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Simple snackbar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.green,
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: () {
                          print('Clicado!!!');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                },
                child: Text('Action Snackbar'))
          ],
        ),
      ),
    );
  }
}

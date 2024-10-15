import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
const DialogsPage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Dialogs")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog(
                  barrierDismissible: false,
                  context: context, 
                  builder: (_) {
                    return DialogCustom(context);
                  }
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                await showDialog(
                  context: context, 
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('SimpleDialog'),
                      contentPadding: const EdgeInsets.all(10.0),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Titulo Y'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Fechar Dialog'),
                        )
                      ],
                    );
                  }
                );
              },
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                await showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      title: const Text("Alert Dialog"),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('Deseja realmente Salvar????'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Cancelar'),

                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Salvar'),
                        ),
                      ],
                    );
                  });
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context, 
                  initialTime: TimeOfDay.now(),
                );
                print('Selected Time: $selectedTime');
              },
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context, 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2030),
                );
                print('A data selecionado foi $selectedDate');
              },
              child: const Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  applicationVersion: '1.0.0',
                  applicationIcon: const Icon(Icons.flutter_dash),
                  children: [
                    const Text('Desenvolvedor'),
                    const Text('Desenvolvedor'),
                    const Text('Projeto'),
                  ],
                );
              }, 
              child: const Text('About Dialog Version')
            )
          ],
        )
      ),
    );
  }
}
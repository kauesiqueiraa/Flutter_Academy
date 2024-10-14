import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_fluttermaonamassa.dart';

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
              onPressed: () {
                showDialog(
                  // barrierDismissible: false,
                  context: context, 
                  builder: (context) {
                    return DialogCustom();
                  }
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Date Picker'),
            ),
          ],
        )
      ),
    );
  }
}
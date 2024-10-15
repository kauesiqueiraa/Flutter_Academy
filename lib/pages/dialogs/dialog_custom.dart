import 'package:flutter/material.dart';

class DialogCustom extends Dialog{
  DialogCustom(BuildContext context): super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      width: 300,
      height: 300,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Titulo X'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(), 
            child: const Text('Fechar Dialog'),
          )
        ],
      ),
    ),
  );
}